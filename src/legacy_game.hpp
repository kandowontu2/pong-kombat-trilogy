#pragma once

#include "audio.hpp"
#include "renderer.hpp"

#include <array>
#include <deque>
#include <string>
#include <string_view>
#include <xinput.h>

namespace pk3 {

class LegacyGame {
public:
    enum class Edition { PongKombat, PongKombat2 };

    LegacyGame(Edition edition, Renderer& renderer, AudioEngine& audio);
    ~LegacyGame();
    void initialize();
    void update(double dt);
    void render();
    void onKeyDown(int virtualKey, bool repeat);
    void onKeyUp(int virtualKey);
    void toggleCheatMenu();
    bool returnRequested() const { return returnRequested_; }
    bool cheatMenuOpen() const { return cheatOpen_; }
    bool runReturnLifecycleSelfTest();
    bool runSpecialMoveSelfTest();

private:
    enum class Screen { Intro, Mode, Select, Versus, Match, Finish, PostGame };

    int pk1Picture(std::string_view name) const;
    const Image& pk1Image(std::string_view name);
    const Image& pk2Image(int index);
    void startMatch();
    void resetBall(int direction = 0);
    void scorePoint(int player);
    void beginFinish(int player);
    void finishMatch(int player);
    void advancePostGame();
    void setTournamentOpponent();
    int tournamentOpponentCount() const;
    void renderPk1();
    void renderPk2();
    void renderMatch();
    void renderCheats();
    void initializeControllers();
    void shutdownControllers();
    void pollControllers();
    void pushInput(int player, char token);
    bool inputEndsWith(int player, std::string_view sequence) const;
    void trySpecial(int player);
    void tryFinisher(int player);
    void spawnProjectile(int player);
    void renderFinishOverlay();
    bool held(int key) const;

    Edition edition_;
    Renderer& renderer_;
    AudioEngine& audio_;
    Screen screen_ = Screen::Intro;
    std::array<bool, 256> keys_{};
    int menuChoice_ = 0;
    int playerCount_ = 1;
    int selection_[2] = {0, 1};
    int score_[2] = {0, 0};
    int health_[2] = {100, 100};
    double roundTime_ = 99.0;
    double roundIntroTime_ = 0.0;
    float paddleY_[2] = {80.0f, 80.0f};
    float ballX_ = 160.0f;
    float ballY_ = 100.0f;
    float ballVx_ = 95.0f;
    float ballVy_ = 52.0f;
    double screenTime_ = 0.0;
    double projectileCooldown_[2] = {0.0, 0.0};
    struct InputEvent { char token; double time; };
    std::array<std::deque<InputEvent>, 2> inputHistory_;
    bool projectileActive_[2] = {false, false};
    float projectileX_[2] = {0.0f, 0.0f};
    float projectileY_[2] = {0.0f, 0.0f};
    bool paused_ = false;
    bool returnRequested_ = false;
    bool cheatOpen_ = false;
    int cheatChoice_ = 0;
    bool infiniteP1_ = false;
    bool freezeCpu_ = false;
    bool turboBall_ = false;
    bool unlockSecrets_ = false;
    int winner_ = 0;
    int tournamentIndex_ = 0;
    bool continueTournament_ = false;
    bool tournamentComplete_ = false;
    bool finisherPerformed_ = false;
    bool flawlessWin_ = false;
    const char* finisherLabel_ = nullptr;
    std::string codeInput_;
    std::array<std::array<std::uint32_t, 7>, 2> controllerBindings_{};
    std::array<int, 2> controllerSlots_{{0, 1}};
    std::array<std::array<bool, 7>, 2> previousControllerActions_{};
    HMODULE xinputModule_ = nullptr;
    using XInputGetStateFunction = DWORD(WINAPI*)(DWORD, XINPUT_STATE*);
    XInputGetStateFunction xinputGetState_ = nullptr;
};

} // namespace pk3
