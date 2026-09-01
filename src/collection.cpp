#include "collection.hpp"

#include "pk3_asset_catalog.hpp"
#include "resource_ids.hpp"

#include <array>
#include <cmath>
#include <string>

namespace pk3 {
namespace {

RECT rect(int left, int top, int right, int bottom) { return RECT{left, top, right, bottom}; }

constexpr std::array<const char*, 5> kEntries{{
    "PONG KOMBAT", "PONG KOMBAT 2", "PONG KOMBAT 3", "CONTROLLER SETTINGS", "EXIT"}};

} // namespace

Collection::Collection(Renderer& renderer, AudioEngine& audio) : renderer_(renderer), audio_(audio) {}

void Collection::initialize() {
    quitRequested_ = false;
    selection_ = 0;
    returnToLauncher();
}

void Collection::returnToLauncher() {
    audio_.stopAll();
    pk3_.reset();
    legacy_.reset();
    active_ = Active::Launcher;
    renderer_.setCanvasSize(640, 480);
}

void Collection::launchSelection() {
    audio_.stopAll();
    if (selection_ == 0 || selection_ == 1) {
        active_ = selection_ == 0 ? Active::PongKombat : Active::PongKombat2;
        legacy_ = std::make_unique<LegacyGame>(
            selection_ == 0 ? LegacyGame::Edition::PongKombat : LegacyGame::Edition::PongKombat2,
            renderer_, audio_);
        legacy_->initialize();
    } else if (selection_ == 2 || selection_ == 3) {
        active_ = selection_ == 2 ? Active::PongKombat3 : Active::Settings;
        pk3_ = std::make_unique<Game>(renderer_, audio_, true, true);
        pk3_->initialize();
        if (selection_ == 3) pk3_->openControllerSettings(true);
    } else {
        quitRequested_ = true;
    }
}

void Collection::update(double dt) {
    clock_ += dt;
    if (active_ == Active::Launcher) return;
    if (legacy_) {
        legacy_->update(dt);
        if (legacy_->returnRequested()) returnToLauncher();
    } else if (pk3_) {
        pk3_->update(dt);
        if (pk3_->returnRequested()) returnToLauncher();
    }
}

void Collection::render() {
    if (active_ == Active::Launcher) renderLauncher();
    else if (legacy_) legacy_->render();
    else if (pk3_) pk3_->render();
}

void Collection::onKeyDown(int virtualKey, bool repeat) {
    if (active_ == Active::Launcher) {
        if (repeat) return;
        if (virtualKey == VK_UP || virtualKey == 'W') selection_ = (selection_ + 4) % 5;
        else if (virtualKey == VK_DOWN || virtualKey == 'S') selection_ = (selection_ + 1) % 5;
        else if (virtualKey == VK_RETURN || virtualKey == VK_SPACE) launchSelection();
        else if (virtualKey == VK_ESCAPE) quitRequested_ = true;
        return;
    }
    if (virtualKey == VK_F12 && !repeat) {
        returnToLauncher();
        return;
    }
    if (legacy_) legacy_->onKeyDown(virtualKey, repeat);
    else if (pk3_) pk3_->onKeyDown(virtualKey, repeat);
}

void Collection::onKeyUp(int virtualKey) {
    if (legacy_) legacy_->onKeyUp(virtualKey);
    else if (pk3_) pk3_->onKeyUp(virtualKey);
}

void Collection::toggleCheatMenu() {
    if (legacy_) legacy_->toggleCheatMenu();
    else if (pk3_) pk3_->toggleCheatMenu();
}

void Collection::renderLauncher() {
    renderer_.clear(RGB(3, 3, 8));
    for (int y = 0; y < 480; y += 24) {
        const int glow = static_cast<int>(10 + 7 * std::sin(clock_ * 0.7 + y * 0.04));
        renderer_.fillRect(0, y, 640, 1, RGB(glow, 0, 0));
    }
    const Image& pk2Logo = renderer_.pictureResource(kPk2PictureResourceBase + 1);
    if (pk2Logo) renderer_.blitScaled(pk2Logo, DrawRect{126, 34, 389, 62});
    renderer_.text("TRILOGY", rect(130, 92, 510, 143), 27, RGB(255, 200, 20));
    renderer_.line(100, 145, 540, 145, RGB(150, 0, 0), 2);

    for (int i = 0; i < static_cast<int>(kEntries.size()); ++i) {
        const int y = 171 + i * 51;
        if (i == selection_) {
            renderer_.fillRect(133, y, 374, 41, RGB(62, 4, 4));
            renderer_.strokeRect(133, y, 374, 41, RGB(240, 35, 15), 2);
        }
        renderer_.text(kEntries[i], rect(140, y, 500, y + 41), i < 3 ? 19 : 15,
                       i == selection_ ? RGB(255, 230, 40) : RGB(205, 205, 205));
    }
    renderer_.text("ENTER: SELECT     ALT+ENTER: FULLSCREEN", rect(20, 438, 620, 468), 10,
                   RGB(125, 125, 135), DT_CENTER | DT_VCENTER | DT_SINGLELINE, false);
}

} // namespace pk3
