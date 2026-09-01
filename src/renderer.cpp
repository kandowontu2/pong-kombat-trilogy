#include "renderer.hpp"

#include "resource_ids.hpp"

#include <algorithm>
#include <cmath>
#include <cstring>
#include <stdexcept>

namespace pk3 {
namespace {

struct ResourceView {
    const std::uint8_t* data = nullptr;
    DWORD size = 0;
};

ResourceView loadResourceBytes(int id) {
    HMODULE module = GetModuleHandleW(nullptr);
    HRSRC resource = FindResourceW(module, MAKEINTRESOURCEW(id), RT_RCDATA);
    if (!resource) {
        return {};
    }
    HGLOBAL loaded = LoadResource(module, resource);
    if (!loaded) {
        return {};
    }
    return {static_cast<const std::uint8_t*>(LockResource(loaded)), SizeofResource(module, resource)};
}

} // namespace

Renderer::~Renderer() {
    shutdown();
}

bool Renderer::initialize() {
    if (memoryDc_) {
        return true;
    }

    HRESULT result = CoCreateInstance(CLSID_WICImagingFactory, nullptr, CLSCTX_INPROC_SERVER,
                                      IID_PPV_ARGS(&wic_));
    if (FAILED(result)) {
        return false;
    }

    HDC screen = GetDC(nullptr);
    memoryDc_ = CreateCompatibleDC(screen);
    ReleaseDC(nullptr, screen);
    if (!memoryDc_ || !setCanvasSize(kCanvasWidth, kCanvasHeight)) {
        shutdown();
        return false;
    }
    SetBkMode(memoryDc_, TRANSPARENT);
    SetStretchBltMode(memoryDc_, COLORONCOLOR);
    clear();
    return true;
}

bool Renderer::setCanvasSize(int width, int height) {
    if (width <= 0 || height <= 0 || !memoryDc_) return false;
    if (bitmap_ && width == canvasWidth_ && height == canvasHeight_) return true;

    BITMAPINFO info{};
    info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    info.bmiHeader.biWidth = width;
    info.bmiHeader.biHeight = -height;
    info.bmiHeader.biPlanes = 1;
    info.bmiHeader.biBitCount = 32;
    info.bmiHeader.biCompression = BI_RGB;

    std::uint32_t* newFramebuffer = nullptr;
    HDC screen = GetDC(nullptr);
    HBITMAP newBitmap = CreateDIBSection(screen, &info, DIB_RGB_COLORS,
                                         reinterpret_cast<void**>(&newFramebuffer), nullptr, 0);
    ReleaseDC(nullptr, screen);
    if (!newBitmap || !newFramebuffer) {
        if (newBitmap) DeleteObject(newBitmap);
        return false;
    }

    if (!bitmap_) {
        oldBitmap_ = SelectObject(memoryDc_, newBitmap);
    } else {
        SelectObject(memoryDc_, newBitmap);
        DeleteObject(bitmap_);
    }
    bitmap_ = newBitmap;
    framebuffer_ = newFramebuffer;
    canvasWidth_ = width;
    canvasHeight_ = height;
    clear();
    return true;
}

void Renderer::shutdown() {
    pictures_.clear();
    if (presentationDc_ && oldPresentationBitmap_) {
        SelectObject(presentationDc_, oldPresentationBitmap_);
        oldPresentationBitmap_ = nullptr;
    }
    if (presentationBitmap_) {
        DeleteObject(presentationBitmap_);
        presentationBitmap_ = nullptr;
    }
    if (presentationDc_) {
        DeleteDC(presentationDc_);
        presentationDc_ = nullptr;
    }
    presentationWidth_ = 0;
    presentationHeight_ = 0;
    if (memoryDc_ && oldBitmap_) {
        SelectObject(memoryDc_, oldBitmap_);
        oldBitmap_ = nullptr;
    }
    if (bitmap_) {
        DeleteObject(bitmap_);
        bitmap_ = nullptr;
    }
    if (memoryDc_) {
        DeleteDC(memoryDc_);
        memoryDc_ = nullptr;
    }
    framebuffer_ = nullptr;
    canvasWidth_ = 0;
    canvasHeight_ = 0;
    if (wic_) {
        wic_->Release();
        wic_ = nullptr;
    }
}

std::uint32_t Renderer::colorToPixel(COLORREF color) {
    return 0xff000000u | (static_cast<std::uint32_t>(GetRValue(color)) << 16u) |
           (static_cast<std::uint32_t>(GetGValue(color)) << 8u) |
           static_cast<std::uint32_t>(GetBValue(color));
}

void Renderer::clear(COLORREF color) {
    if (!framebuffer_) {
        return;
    }
    std::fill(framebuffer_, framebuffer_ + canvasWidth_ * canvasHeight_, colorToPixel(color));
}

void Renderer::fillRect(int x, int y, int w, int h, COLORREF color) {
    if (!framebuffer_ || w <= 0 || h <= 0) {
        return;
    }
    const int left = std::clamp(x, 0, canvasWidth_);
    const int top = std::clamp(y, 0, canvasHeight_);
    const int right = std::clamp(x + w, 0, canvasWidth_);
    const int bottom = std::clamp(y + h, 0, canvasHeight_);
    const std::uint32_t pixel = colorToPixel(color);
    for (int row = top; row < bottom; ++row) {
        std::fill(framebuffer_ + row * canvasWidth_ + left,
                  framebuffer_ + row * canvasWidth_ + right, pixel);
    }
}

void Renderer::strokeRect(int x, int y, int w, int h, COLORREF color, int thickness) {
    thickness = std::max(1, thickness);
    fillRect(x, y, w, thickness, color);
    fillRect(x, y + h - thickness, w, thickness, color);
    fillRect(x, y, thickness, h, color);
    fillRect(x + w - thickness, y, thickness, h, color);
}

void Renderer::line(int x1, int y1, int x2, int y2, COLORREF color, int thickness) {
    HPEN pen = CreatePen(PS_SOLID, std::max(1, thickness), color);
    HGDIOBJ old = SelectObject(memoryDc_, pen);
    MoveToEx(memoryDc_, x1, y1, nullptr);
    LineTo(memoryDc_, x2, y2);
    SelectObject(memoryDc_, old);
    DeleteObject(pen);
}

void Renderer::circle(int cx, int cy, int radius, COLORREF color, bool filled) {
    HPEN pen = CreatePen(PS_SOLID, 1, color);
    HBRUSH brush = filled ? CreateSolidBrush(color) : static_cast<HBRUSH>(GetStockObject(NULL_BRUSH));
    HGDIOBJ oldPen = SelectObject(memoryDc_, pen);
    HGDIOBJ oldBrush = SelectObject(memoryDc_, brush);
    Ellipse(memoryDc_, cx - radius, cy - radius, cx + radius + 1, cy + radius + 1);
    SelectObject(memoryDc_, oldPen);
    SelectObject(memoryDc_, oldBrush);
    DeleteObject(pen);
    if (filled) {
        DeleteObject(brush);
    }
}

void Renderer::text(const std::string& value, const RECT& rect, int points, COLORREF color,
                    UINT format, bool heavy) {
    if (value.empty()) {
        return;
    }
    const int dpi = GetDeviceCaps(memoryDc_, LOGPIXELSY);
    const int height = -MulDiv(points, dpi, 72);
    HFONT font = CreateFontA(height, 0, 0, 0, heavy ? FW_HEAVY : FW_NORMAL, FALSE, FALSE, FALSE,
                             ANSI_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
                             NONANTIALIASED_QUALITY, FF_DONTCARE, "Arial Black");
    HGDIOBJ old = SelectObject(memoryDc_, font);
    SetBkMode(memoryDc_, TRANSPARENT);
    SetTextColor(memoryDc_, color);
    RECT copy = rect;
    DrawTextA(memoryDc_, value.c_str(), static_cast<int>(value.size()), &copy, format);
    SelectObject(memoryDc_, old);
    DeleteObject(font);
}

Image Renderer::loadPictureResource(int resourceId) {
    ResourceView resource = loadResourceBytes(resourceId);
    if (!resource.data || !resource.size || !wic_) {
        return {};
    }

    IWICStream* stream = nullptr;
    IWICBitmapDecoder* decoder = nullptr;
    IWICBitmapFrameDecode* frame = nullptr;
    IWICFormatConverter* converter = nullptr;
    Image result;

    HRESULT hr = wic_->CreateStream(&stream);
    if (SUCCEEDED(hr)) {
        hr = stream->InitializeFromMemory(const_cast<BYTE*>(resource.data), resource.size);
    }
    if (SUCCEEDED(hr)) {
        hr = wic_->CreateDecoderFromStream(stream, nullptr, WICDecodeMetadataCacheOnLoad, &decoder);
    }
    if (SUCCEEDED(hr)) {
        hr = decoder->GetFrame(0, &frame);
    }
    if (SUCCEEDED(hr)) {
        hr = wic_->CreateFormatConverter(&converter);
    }
    if (SUCCEEDED(hr)) {
        hr = converter->Initialize(frame, GUID_WICPixelFormat32bppBGRA,
                                   WICBitmapDitherTypeNone, nullptr, 0.0,
                                   WICBitmapPaletteTypeCustom);
    }
    UINT width = 0;
    UINT height = 0;
    if (SUCCEEDED(hr)) {
        hr = converter->GetSize(&width, &height);
    }
    if (SUCCEEDED(hr) && width && height) {
        result.width = static_cast<int>(width);
        result.height = static_cast<int>(height);
        result.pixels.resize(static_cast<std::size_t>(width) * height);
        hr = converter->CopyPixels(nullptr, width * 4, static_cast<UINT>(result.pixels.size() * 4),
                                   reinterpret_cast<BYTE*>(result.pixels.data()));
        if (FAILED(hr)) {
            result = {};
        }
    }

    if (converter) converter->Release();
    if (frame) frame->Release();
    if (decoder) decoder->Release();
    if (stream) stream->Release();
    return result;
}

const Image& Renderer::picture(int id) {
    return pictureResource(kPictureResourceBase + id);
}

const Image& Renderer::pictureResource(int resourceId) {
    auto found = pictures_.find(resourceId);
    if (found != pictures_.end()) {
        return found->second;
    }
    auto [inserted, _] = pictures_.emplace(resourceId, loadPictureResource(resourceId));
    return inserted->second;
}

void Renderer::putPixel(int x, int y, std::uint32_t bgra) {
    if (x >= 0 && x < canvasWidth_ && y >= 0 && y < canvasHeight_) {
        framebuffer_[y * canvasWidth_ + x] = bgra | 0xff000000u;
    }
}

void Renderer::blit(int pictureId, int x, int y) {
    blit(picture(pictureId), x, y);
}

void Renderer::blit(const Image& image, int x, int y) {
    if (!image || !framebuffer_) {
        return;
    }
    const int sx0 = std::max(0, -x);
    const int sy0 = std::max(0, -y);
    const int sx1 = std::min(image.width, canvasWidth_ - x);
    const int sy1 = std::min(image.height, canvasHeight_ - y);
    for (int sy = sy0; sy < sy1; ++sy) {
        const auto* src = image.pixels.data() + sy * image.width + sx0;
        auto* dst = framebuffer_ + (y + sy) * canvasWidth_ + (x + sx0);
        for (int sx = sx0; sx < sx1; ++sx, ++src, ++dst) {
            const std::uint32_t alpha = *src >> 24u;
            if (alpha == 255u) {
                *dst = *src;
            } else if (alpha) {
                const std::uint32_t inv = 255u - alpha;
                const std::uint32_t rb = (((*src & 0x00ff00ffu) * alpha) + ((*dst & 0x00ff00ffu) * inv)) >> 8u;
                const std::uint32_t g = (((*src & 0x0000ff00u) * alpha) + ((*dst & 0x0000ff00u) * inv)) >> 8u;
                *dst = 0xff000000u | (rb & 0x00ff00ffu) | (g & 0x0000ff00u);
            }
        }
    }
}

void Renderer::blitKeyed(const Image& image, int x, int y, COLORREF key) {
    if (!image || !framebuffer_) return;
    const std::uint32_t keyed = colorToPixel(key) & 0x00ffffffu;
    const int sx0 = std::max(0, -x);
    const int sy0 = std::max(0, -y);
    const int sx1 = std::min(image.width, canvasWidth_ - x);
    const int sy1 = std::min(image.height, canvasHeight_ - y);
    for (int sy = sy0; sy < sy1; ++sy) {
        for (int sx = sx0; sx < sx1; ++sx) {
            const std::uint32_t pixel = image.pixels[sy * image.width + sx];
            if ((pixel & 0x00ffffffu) != keyed && (pixel >> 24u) != 0)
                framebuffer_[(y + sy) * canvasWidth_ + x + sx] = pixel | 0xff000000u;
        }
    }
}

void Renderer::blitScaled(const Image& image, const DrawRect& destination) {
    if (!image || !memoryDc_ || destination.w <= 0 || destination.h <= 0) return;
    BITMAPINFO info{};
    info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    info.bmiHeader.biWidth = image.width;
    info.bmiHeader.biHeight = -image.height;
    info.bmiHeader.biPlanes = 1;
    info.bmiHeader.biBitCount = 32;
    info.bmiHeader.biCompression = BI_RGB;
    SetStretchBltMode(memoryDc_, COLORONCOLOR);
    StretchDIBits(memoryDc_, destination.x, destination.y, destination.w, destination.h,
                  0, 0, image.width, image.height, image.pixels.data(), &info,
                  DIB_RGB_COLORS, SRCCOPY);
}

void Renderer::blitRegion(int pictureId, const DrawRect& source, const DrawRect& destination) {
    if (pictureId == 0) {
        return;
    }
    const Image& image = picture(pictureId);
    if (!image || source.w <= 0 || source.h <= 0 || destination.w <= 0 || destination.h <= 0) {
        return;
    }
    for (int dy = 0; dy < destination.h; ++dy) {
        const int y = destination.y + dy;
        if (y < 0 || y >= canvasHeight_) continue;
        const int sy = source.y + (dy * source.h) / destination.h;
        if (sy < 0 || sy >= image.height) continue;
        for (int dx = 0; dx < destination.w; ++dx) {
            const int x = destination.x + dx;
            if (x < 0 || x >= canvasWidth_) continue;
            const int sx = source.x + (dx * source.w) / destination.w;
            if (sx < 0 || sx >= image.width) continue;
            putPixel(x, y, image.pixels[sy * image.width + sx]);
        }
    }
}

void Renderer::blitMasked(int colorPictureId, int maskPictureId, const DrawRect& source,
                          const DrawRect& destination) {
    const Image& color = picture(colorPictureId);
    const Image& mask = picture(maskPictureId);
    if (!color || !mask || source.w <= 0 || source.h <= 0 || destination.w <= 0 || destination.h <= 0) {
        return;
    }
    for (int dy = 0; dy < destination.h; ++dy) {
        const int y = destination.y + dy;
        if (y < 0 || y >= canvasHeight_) continue;
        const int sy = source.y + (dy * source.h) / destination.h;
        if (sy < 0 || sy >= color.height || sy >= mask.height) continue;
        for (int dx = 0; dx < destination.w; ++dx) {
            const int x = destination.x + dx;
            if (x < 0 || x >= canvasWidth_) continue;
            const int sx = source.x + (dx * source.w) / destination.w;
            if (sx < 0 || sx >= color.width || sx >= mask.width) continue;
            const std::uint32_t mp = mask.pixels[sy * mask.width + sx];
            const int luminance = static_cast<int>((mp & 0xffu) + ((mp >> 8u) & 0xffu) + ((mp >> 16u) & 0xffu));
            if (luminance < 640) {
                putPixel(x, y, color.pixels[sy * color.width + sx]);
            }
        }
    }
}

void Renderer::present(HDC target, const RECT& client, bool showFrame) {
    const int clientWidth = client.right - client.left;
    const int clientHeight = client.bottom - client.top;
    if (clientWidth <= 0 || clientHeight <= 0) {
        return;
    }
    if (!presentationDc_ || presentationWidth_ != clientWidth || presentationHeight_ != clientHeight) {
        if (presentationDc_ && oldPresentationBitmap_) {
            SelectObject(presentationDc_, oldPresentationBitmap_);
            oldPresentationBitmap_ = nullptr;
        }
        if (presentationBitmap_) {
            DeleteObject(presentationBitmap_);
            presentationBitmap_ = nullptr;
        }
        if (!presentationDc_) presentationDc_ = CreateCompatibleDC(target);
        presentationBitmap_ = CreateCompatibleBitmap(target, clientWidth, clientHeight);
        if (!presentationDc_ || !presentationBitmap_) return;
        oldPresentationBitmap_ = SelectObject(presentationDc_, presentationBitmap_);
        presentationWidth_ = clientWidth;
        presentationHeight_ = clientHeight;
    }

    RECT backRect{0, 0, clientWidth, clientHeight};
    FillRect(presentationDc_, &backRect, static_cast<HBRUSH>(GetStockObject(BLACK_BRUSH)));

    if (canvasWidth_ <= 0 || canvasHeight_ <= 0) return;
    const double exactScale = std::min(static_cast<double>(clientWidth) / canvasWidth_,
                                       static_cast<double>(clientHeight) / canvasHeight_);
    double scale = exactScale;
    if (exactScale >= 1.0) {
        scale = std::max(1.0, std::floor(exactScale));
    }
    const int width = std::max(1, static_cast<int>(std::lround(canvasWidth_ * scale)));
    const int height = std::max(1, static_cast<int>(std::lround(canvasHeight_ * scale)));
    const int x = (clientWidth - width) / 2;
    const int y = (clientHeight - height) / 2;
    SetStretchBltMode(presentationDc_, COLORONCOLOR);
    StretchBlt(presentationDc_, x, y, width, height, memoryDc_, 0, 0,
               canvasWidth_, canvasHeight_, SRCCOPY);
    if (showFrame) {
        HPEN pen = CreatePen(PS_SOLID, 1, RGB(80, 80, 80));
        HGDIOBJ old = SelectObject(presentationDc_, pen);
        HGDIOBJ oldBrush = SelectObject(presentationDc_, GetStockObject(NULL_BRUSH));
        Rectangle(presentationDc_, x, y, x + width, y + height);
        SelectObject(presentationDc_, oldBrush);
        SelectObject(presentationDc_, old);
        DeleteObject(pen);
    }
    BitBlt(target, 0, 0, clientWidth, clientHeight, presentationDc_, 0, 0, SRCCOPY);
}

bool Renderer::saveBmp(const wchar_t* path) const {
    if (!framebuffer_ || !path) return false;
    HANDLE file = CreateFileW(path, GENERIC_WRITE, 0, nullptr, CREATE_ALWAYS,
                              FILE_ATTRIBUTE_NORMAL, nullptr);
    if (file == INVALID_HANDLE_VALUE) return false;

    BITMAPFILEHEADER fileHeader{};
    BITMAPINFOHEADER infoHeader{};
    infoHeader.biSize = sizeof(BITMAPINFOHEADER);
    infoHeader.biWidth = canvasWidth_;
    infoHeader.biHeight = -canvasHeight_;
    infoHeader.biPlanes = 1;
    infoHeader.biBitCount = 32;
    infoHeader.biCompression = BI_RGB;
    infoHeader.biSizeImage = canvasWidth_ * canvasHeight_ * 4;
    fileHeader.bfType = 0x4d42;
    fileHeader.bfOffBits = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER);
    fileHeader.bfSize = fileHeader.bfOffBits + infoHeader.biSizeImage;

    DWORD written = 0;
    bool ok = WriteFile(file, &fileHeader, sizeof(fileHeader), &written, nullptr) &&
              written == sizeof(fileHeader);
    ok = ok && WriteFile(file, &infoHeader, sizeof(infoHeader), &written, nullptr) &&
         written == sizeof(infoHeader);
    ok = ok && WriteFile(file, framebuffer_, infoHeader.biSizeImage, &written, nullptr) &&
         written == infoHeader.biSizeImage;
    CloseHandle(file);
    return ok;
}

} // namespace pk3
