#pragma once

#include <windows.h>
#include <wincodec.h>

#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>

namespace pk3 {

struct Image {
    int width = 0;
    int height = 0;
    std::vector<std::uint32_t> pixels;
    explicit operator bool() const { return width > 0 && height > 0 && !pixels.empty(); }
};

struct DrawRect {
    int x = 0;
    int y = 0;
    int w = 0;
    int h = 0;
};

class Renderer {
public:
    Renderer() = default;
    ~Renderer();

    bool initialize();
    void shutdown();
    bool setCanvasSize(int width, int height);
    int canvasWidth() const { return canvasWidth_; }
    int canvasHeight() const { return canvasHeight_; }

    void clear(COLORREF color = RGB(0, 0, 0));
    void fillRect(int x, int y, int w, int h, COLORREF color);
    void strokeRect(int x, int y, int w, int h, COLORREF color, int thickness = 1);
    void line(int x1, int y1, int x2, int y2, COLORREF color, int thickness = 1);
    void circle(int cx, int cy, int radius, COLORREF color, bool filled = true);
    void text(const std::string& value, const RECT& rect, int points, COLORREF color,
              UINT format = DT_CENTER | DT_VCENTER | DT_SINGLELINE, bool heavy = true);

    const Image& picture(int id);
    const Image& pictureResource(int resourceId);
    void blit(int pictureId, int x, int y);
    void blit(const Image& image, int x, int y);
    void blitKeyed(const Image& image, int x, int y, COLORREF key = RGB(0, 0, 0));
    void blitScaled(const Image& image, const DrawRect& destination);
    void blitRegion(int pictureId, const DrawRect& source, const DrawRect& destination);
    void blitMasked(int colorPictureId, int maskPictureId, const DrawRect& source,
                    const DrawRect& destination);

    void present(HDC target, const RECT& client, bool showFrame = false);
    bool saveBmp(const wchar_t* path) const;
    HDC memoryDC() const { return memoryDc_; }

private:
    Image loadPictureResource(int resourceId);
    void putPixel(int x, int y, std::uint32_t bgra);
    static std::uint32_t colorToPixel(COLORREF color);

    HDC memoryDc_ = nullptr;
    HBITMAP bitmap_ = nullptr;
    HGDIOBJ oldBitmap_ = nullptr;
    HDC presentationDc_ = nullptr;
    HBITMAP presentationBitmap_ = nullptr;
    HGDIOBJ oldPresentationBitmap_ = nullptr;
    int presentationWidth_ = 0;
    int presentationHeight_ = 0;
    std::uint32_t* framebuffer_ = nullptr;
    IWICImagingFactory* wic_ = nullptr;
    std::unordered_map<int, Image> pictures_;
    int canvasWidth_ = 0;
    int canvasHeight_ = 0;
};

} // namespace pk3
