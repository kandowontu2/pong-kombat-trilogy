#include "collection.hpp"

#include "pk3_asset_catalog.hpp"
#include "resource_ids.hpp"

#include <array>
#include <cmath>
#include <string>

namespace pk3 {
namespace {

RECT rect(int left, int top, int right, int bottom) { return RECT{left, top, right, bottom}; }

constexpr std::array<const char*, 6> kEntries{{"PONG KOMBAT", "PONG KOMBAT 2", "PONG KOMBAT 3",
                                               "CONTROLLER SETTINGS", "CREDITS", "EXIT"}};

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
    } else if (selection_ == 4) {
        active_ = Active::Credits;
        renderer_.setCanvasSize(640, 480);
    } else {
        quitRequested_ = true;
    }
}

void Collection::update(double dt) {
    clock_ += dt;
    if (active_ == Active::Launcher || active_ == Active::Credits) return;
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
    else if (active_ == Active::Credits) renderCredits();
    else if (legacy_) legacy_->render();
    else if (pk3_) pk3_->render();
}

void Collection::onKeyDown(int virtualKey, bool repeat) {
    if (active_ == Active::Launcher) {
        if (repeat) return;
        if (virtualKey == VK_UP || virtualKey == 'W')
            selection_ = (selection_ + static_cast<int>(kEntries.size()) - 1) % static_cast<int>(kEntries.size());
        else if (virtualKey == VK_DOWN || virtualKey == 'S')
            selection_ = (selection_ + 1) % static_cast<int>(kEntries.size());
        else if (virtualKey == VK_RETURN || virtualKey == VK_SPACE) launchSelection();
        else if (virtualKey == VK_ESCAPE) quitRequested_ = true;
        return;
    }
    if (active_ == Active::Credits) {
        if (!repeat && (virtualKey == VK_ESCAPE || virtualKey == VK_RETURN || virtualKey == VK_SPACE ||
                        virtualKey == VK_F12)) {
            returnToLauncher();
        }
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
        const int y = 160 + i * 44;
        if (i == selection_) {
            renderer_.fillRect(133, y, 374, 36, RGB(62, 4, 4));
            renderer_.strokeRect(133, y, 374, 36, RGB(240, 35, 15), 2);
        }
        renderer_.text(kEntries[i], rect(140, y, 500, y + 36), i < 3 ? 18 : 14,
                       i == selection_ ? RGB(255, 230, 40) : RGB(205, 205, 205));
    }
    renderer_.text("ENTER: SELECT     ALT+ENTER: FULLSCREEN", rect(20, 438, 620, 468), 10,
                   RGB(125, 125, 135), DT_CENTER | DT_VCENTER | DT_SINGLELINE, false);
}

void Collection::renderCredits() {
    renderer_.clear(RGB(3, 3, 8));
    for (int y = 0; y < 480; y += 24) {
        const int glow = static_cast<int>(9 + 6 * std::sin(clock_ * 0.7 + y * 0.04));
        renderer_.fillRect(0, y, 640, 1, RGB(glow, 0, 0));
    }

    renderer_.text("CREDITS", rect(80, 14, 560, 54), 25, RGB(255, 205, 25));
    renderer_.line(76, 57, 564, 57, RGB(150, 0, 0), 2);

    renderer_.text("PONG KOMBAT", rect(40, 65, 600, 88), 14, RGB(240, 45, 25));
    renderer_.text("Stefan Gagne - code, art, sound and 3-D rendering", rect(40, 88, 600, 109), 11,
                   RGB(225, 225, 225));
    renderer_.text("Nick Steele, Julio DeLeon, David Hunt, Josh Saxon and George Sopko", rect(25, 108, 615, 128),
                   9, RGB(155, 155, 165));

    renderer_.text("PONG KOMBAT 2", rect(40, 133, 600, 156), 14, RGB(240, 45, 25));
    renderer_.text("Ryan Sadwick - Sadwick Productions", rect(40, 156, 600, 177), 11, RGB(225, 225, 225));
    renderer_.text("Arturo Aquino - Art Entertainment", rect(40, 176, 600, 197), 11, RGB(225, 225, 225));
    renderer_.text("Based on Pong Kombat by Gagne Software; documentation by Stefan Gagne", rect(20, 196, 620, 216),
                   9, RGB(155, 155, 165));

    renderer_.text("PONG KOMBAT 3", rect(40, 221, 600, 244), 14, RGB(240, 45, 25));
    renderer_.text("Brandon Kuroda", rect(40, 244, 600, 265), 11, RGB(225, 225, 225));
    renderer_.text("Contributors: Brandon Yowell, Nathan Rosen, Graeme Humphries,", rect(20, 264, 620, 284), 9,
                   RGB(155, 155, 165));
    renderer_.text("Misha Sakellaropoulo and Brandon Miguel", rect(20, 282, 620, 302), 9, RGB(155, 155, 165));

    renderer_.text("NATIVE WINDOWS PRESERVATION PORT", rect(30, 312, 610, 337), 14, RGB(240, 45, 25));
    renderer_.text("kandowontu - preservation project and release", rect(40, 337, 600, 358), 11,
                   RGB(225, 225, 225));
    renderer_.text("Engineering assistance: OpenAI Codex", rect(40, 357, 600, 378), 11, RGB(225, 225, 225));

    renderer_.text("Original art, audio, names and trademarks remain with their", rect(30, 391, 610, 411), 9,
                   RGB(145, 145, 155));
    renderer_.text("respective creators and owners.", rect(30, 409, 610, 429), 9, RGB(145, 145, 155));
    renderer_.text("ESC / ENTER: RETURN", rect(20, 444, 620, 470), 10, RGB(125, 125, 135));
}

} // namespace pk3
