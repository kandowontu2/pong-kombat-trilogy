#pragma once

#include "audio.hpp"
#include "collection.hpp"
#include "renderer.hpp"

#include <windows.h>

#include <memory>

namespace pk3 {

class App {
public:
    int run(HINSTANCE instance, int showCommand);

private:
    static LRESULT CALLBACK windowProcedure(HWND window, UINT message, WPARAM wParam, LPARAM lParam);
    LRESULT handleMessage(HWND window, UINT message, WPARAM wParam, LPARAM lParam);
    bool createMainWindow(HINSTANCE instance, int showCommand);
    void toggleFullscreen();
    void updateWindowTitle();

    HWND window_ = nullptr;
    Renderer renderer_;
    AudioEngine audio_;
    std::unique_ptr<Collection> collection_;
    bool fullscreen_ = false;
    WINDOWPLACEMENT windowPlacement_{};
    DWORD windowStyle_ = 0;
};

} // namespace pk3
