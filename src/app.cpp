#include "app.hpp"

#include "resource_ids.hpp"

#include <algorithm>
#include <chrono>

namespace pk3 {
namespace {

constexpr wchar_t kWindowClass[] = L"PongKombatTrilogyNativeWindow";
constexpr wchar_t kWindowTitle[] = L"Pong Kombat Trilogy";

int normalizedVirtualKey(WPARAM wParam, LPARAM lParam) {
    if (wParam != VK_SHIFT && wParam != VK_CONTROL && wParam != VK_MENU)
        return static_cast<int>(wParam);
    const UINT scan = static_cast<UINT>((lParam >> 16) & 0xff);
    const UINT extendedScan = scan | ((lParam & (1LL << 24)) ? 0xe000u : 0u);
    const UINT mapped = MapVirtualKeyW(extendedScan, MAPVK_VSC_TO_VK_EX);
    return mapped ? static_cast<int>(mapped) : static_cast<int>(wParam);
}

} // namespace

int App::run(HINSTANCE instance, int showCommand) {
    windowPlacement_.length = sizeof(WINDOWPLACEMENT);
    SetProcessDPIAware();
    if (FAILED(CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED))) return 1;
    if (!renderer_.initialize() || !audio_.initialize() || !createMainWindow(instance, showCommand)) {
        CoUninitialize();
        return 1;
    }
    collection_ = std::make_unique<Collection>(renderer_, audio_);
    collection_->initialize();
    collection_->render();

    LARGE_INTEGER frequency{};
    LARGE_INTEGER previous{};
    QueryPerformanceFrequency(&frequency);
    QueryPerformanceCounter(&previous);
    double accumulator = 0;
    constexpr double step = 1.0 / 60.0;
    bool running = true;

    while (running) {
        MSG message{};
        while (PeekMessageW(&message, nullptr, 0, 0, PM_REMOVE)) {
            if (message.message == WM_QUIT) {
                running = false;
                break;
            }
            TranslateMessage(&message);
            DispatchMessageW(&message);
        }
        if (!running) break;

        LARGE_INTEGER now{};
        QueryPerformanceCounter(&now);
        double elapsed = static_cast<double>(now.QuadPart - previous.QuadPart) /
                         static_cast<double>(frequency.QuadPart);
        previous = now;
        elapsed = std::min(elapsed, 0.25);
        accumulator += elapsed;

        bool updated = false;
        while (accumulator >= step) {
            collection_->update(step);
            accumulator -= step;
            updated = true;
        }
        if (updated) {
            collection_->render();
            InvalidateRect(window_, nullptr, FALSE);
        }
        if (collection_->quitRequested()) {
            DestroyWindow(window_);
            running = false;
        }
        Sleep(1);
    }

    collection_.reset();
    audio_.shutdown();
    renderer_.shutdown();
    CoUninitialize();
    return 0;
}

bool App::createMainWindow(HINSTANCE instance, int showCommand) {
    WNDCLASSEXW windowClass{};
    windowClass.cbSize = sizeof(windowClass);
    windowClass.style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
    windowClass.lpfnWndProc = &App::windowProcedure;
    windowClass.hInstance = instance;
    windowClass.hIcon = LoadIconW(instance, MAKEINTRESOURCEW(1));
    windowClass.hIconSm = LoadIconW(instance, MAKEINTRESOURCEW(1));
    windowClass.hCursor = LoadCursorW(nullptr, IDC_ARROW);
    windowClass.hbrBackground = static_cast<HBRUSH>(GetStockObject(BLACK_BRUSH));
    windowClass.lpszClassName = kWindowClass;
    if (!RegisterClassExW(&windowClass)) return false;

    windowStyle_ = WS_OVERLAPPEDWINDOW;
    RECT desired{0, 0, 960, 720};
    AdjustWindowRectEx(&desired, windowStyle_, FALSE, 0);
    const int width = desired.right - desired.left;
    const int height = desired.bottom - desired.top;
    const int x = std::max(0, (GetSystemMetrics(SM_CXSCREEN) - width) / 2);
    const int y = std::max(0, (GetSystemMetrics(SM_CYSCREEN) - height) / 2);

    window_ = CreateWindowExW(0, kWindowClass, kWindowTitle, windowStyle_, x, y, width, height,
                              nullptr, nullptr, instance, this);
    if (!window_) return false;
    ShowWindow(window_, showCommand);
    UpdateWindow(window_);
    return true;
}

LRESULT CALLBACK App::windowProcedure(HWND window, UINT message, WPARAM wParam, LPARAM lParam) {
    App* app = nullptr;
    if (message == WM_NCCREATE) {
        auto* create = reinterpret_cast<CREATESTRUCTW*>(lParam);
        app = static_cast<App*>(create->lpCreateParams);
        SetWindowLongPtrW(window, GWLP_USERDATA, reinterpret_cast<LONG_PTR>(app));
        app->window_ = window;
    } else {
        app = reinterpret_cast<App*>(GetWindowLongPtrW(window, GWLP_USERDATA));
    }
    return app ? app->handleMessage(window, message, wParam, lParam)
               : DefWindowProcW(window, message, wParam, lParam);
}

LRESULT App::handleMessage(HWND window, UINT message, WPARAM wParam, LPARAM lParam) {
    switch (message) {
    case WM_SYSKEYDOWN:
        if (wParam == VK_RETURN && (lParam & (1LL << 29))) {
            toggleFullscreen();
            return 0;
        }
        if (wParam == VK_F1 && (GetKeyState(VK_CONTROL) & 0x8000) &&
            ((GetKeyState(VK_MENU) & 0x8000) || (lParam & (1LL << 29)))) {
            if (!(lParam & (1LL << 30)) && collection_) collection_->toggleCheatMenu();
            return 0;
        }
        if (collection_) collection_->onKeyDown(normalizedVirtualKey(wParam, lParam),
                                                (lParam & (1LL << 30)) != 0);
        return 0;
    case WM_SYSKEYUP:
        if (collection_) collection_->onKeyUp(normalizedVirtualKey(wParam, lParam));
        return 0;
    case WM_KEYDOWN: {
        const bool repeat = (lParam & (1LL << 30)) != 0;
        if (wParam == VK_F1 && (GetKeyState(VK_CONTROL) & 0x8000) && (GetKeyState(VK_MENU) & 0x8000)) {
            if (!repeat && collection_) collection_->toggleCheatMenu();
            return 0;
        }
        if (collection_) collection_->onKeyDown(normalizedVirtualKey(wParam, lParam), repeat);
        return 0;
    }
    case WM_KEYUP:
        if (collection_) collection_->onKeyUp(normalizedVirtualKey(wParam, lParam));
        return 0;
    case WM_KILLFOCUS:
        if (collection_) {
            for (int key = 0; key < 256; ++key) collection_->onKeyUp(key);
        }
        return 0;
    case WM_PAINT: {
        PAINTSTRUCT paint{};
        HDC dc = BeginPaint(window, &paint);
        RECT client{};
        GetClientRect(window, &client);
        renderer_.present(dc, client, !fullscreen_);
        EndPaint(window, &paint);
        return 0;
    }
    case WM_ERASEBKGND:
        return 1;
    case WM_GETMINMAXINFO: {
        auto* info = reinterpret_cast<MINMAXINFO*>(lParam);
        RECT minimum{0, 0, std::max(320, renderer_.canvasWidth()),
                     std::max(200, renderer_.canvasHeight())};
        AdjustWindowRectEx(&minimum, windowStyle_, FALSE, 0);
        info->ptMinTrackSize.x = minimum.right - minimum.left;
        info->ptMinTrackSize.y = minimum.bottom - minimum.top;
        return 0;
    }
    case WM_CLOSE:
        DestroyWindow(window);
        return 0;
    case WM_DESTROY:
        PostQuitMessage(0);
        return 0;
    default:
        return DefWindowProcW(window, message, wParam, lParam);
    }
}

void App::toggleFullscreen() {
    if (!window_) return;
    if (!fullscreen_) {
        windowStyle_ = static_cast<DWORD>(GetWindowLongPtrW(window_, GWL_STYLE));
        windowPlacement_.length = sizeof(WINDOWPLACEMENT);
        GetWindowPlacement(window_, &windowPlacement_);
        MONITORINFO monitor{};
        monitor.cbSize = sizeof(MONITORINFO);
        GetMonitorInfoW(MonitorFromWindow(window_, MONITOR_DEFAULTTONEAREST), &monitor);
        SetWindowLongPtrW(window_, GWL_STYLE, windowStyle_ & ~WS_OVERLAPPEDWINDOW);
        SetWindowPos(window_, HWND_TOP, monitor.rcMonitor.left, monitor.rcMonitor.top,
                     monitor.rcMonitor.right - monitor.rcMonitor.left,
                     monitor.rcMonitor.bottom - monitor.rcMonitor.top,
                     SWP_NOOWNERZORDER | SWP_FRAMECHANGED);
        fullscreen_ = true;
    } else {
        SetWindowLongPtrW(window_, GWL_STYLE, windowStyle_);
        SetWindowPlacement(window_, &windowPlacement_);
        SetWindowPos(window_, nullptr, 0, 0, 0, 0,
                     SWP_NOMOVE | SWP_NOSIZE | SWP_NOZORDER | SWP_NOOWNERZORDER | SWP_FRAMECHANGED);
        fullscreen_ = false;
    }
    InvalidateRect(window_, nullptr, TRUE);
}

} // namespace pk3
