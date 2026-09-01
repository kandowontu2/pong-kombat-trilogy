#pragma once

#include "audio.hpp"
#include "game.hpp"
#include "legacy_game.hpp"
#include "renderer.hpp"

#include <memory>

namespace pk3 {

class Collection {
public:
    Collection(Renderer& renderer, AudioEngine& audio);
    void initialize();
    void update(double dt);
    void render();
    void onKeyDown(int virtualKey, bool repeat);
    void onKeyUp(int virtualKey);
    void toggleCheatMenu();
    bool quitRequested() const { return quitRequested_; }
    bool atLauncher() const { return active_ == Active::Launcher; }

private:
    enum class Active { Launcher, PongKombat, PongKombat2, PongKombat3, Settings, Credits };

    void launchSelection();
    void returnToLauncher();
    void renderLauncher();
    void renderCredits();

    Renderer& renderer_;
    AudioEngine& audio_;
    Active active_ = Active::Launcher;
    std::unique_ptr<Game> pk3_;
    std::unique_ptr<LegacyGame> legacy_;
    int selection_ = 0;
    double clock_ = 0;
    bool quitRequested_ = false;
};

} // namespace pk3
