#pragma once

#include "audio.hpp"
#include "game_data.hpp"
#include "renderer.hpp"

#include <array>
#include <cstdint>
#include <deque>
#include <string>
#include <vector>
#include <xinput.h>

namespace pk3 {

class Game {
public:
    Game(Renderer& renderer, AudioEngine& audio, bool loadSavedControllerSettings = true,
         bool trilogyMode = false);
    ~Game();

    void initialize();
    void update(double dt);
    void render();
    void onKeyDown(int virtualKey, bool repeat);
    void onKeyUp(int virtualKey);
    void toggleCheatMenu();
    bool cheatMenuOpen() const { return cheatOpen_; }
    void openControllerSettings(bool returnToCollection = false);
    bool returnRequested() const { return returnRequested_; }
    bool runReturnLifecycleSelfTest();

private:
    enum class Screen { Intro, Title, ControllerSettings, Selection, Versus, Match, Continue, GameOver, Ending, Credits };
    enum class MatchPhase { RoundIntro, Active, Finish, RoundOver, MatchOver };
    enum class ControlAction : std::uint8_t { Left, Right, Up, Down, Punch, Kick, Start, Count };

    struct Binding {
        int keyboardKey = 0;
        std::uint32_t gamepadInput = 0;
    };

    struct TokenEvent {
        Token token;
        double time;
    };

    struct Paddle {
        float x = 0;
        float y = 0;
        float freeze = 0;
        float reflect = 0;
        int characterId = 0;
        int displayCharacterId = 0;
        int energy = 100;
        int wins = 0;
    };

    struct Ball {
        float x = 0;
        float y = 0;
        float vx = 0;
        float vy = 0;
        int radius = 5;
        COLORREF color = RGB(255, 255, 255);
        bool visible = true;
    };

    struct Projectile {
        int owner = 0;
        int characterId = 0;
        MoveKind kind = MoveKind::Projectile;
        std::string name;
        float x = 0;
        float y = 0;
        float vx = 0;
        float vy = 0;
        float age = 0;
        float lifetime = 5;
        int damage = 8;
        COLORREF color = RGB(255, 255, 255);
    };

    struct MatchModifiers {
        float ballSpeed = 1.0f;
        float damageScale = 1.0f;
        int ballScale = 1;
        int stageId = 0;
        int gravity = 0;
        bool invisibleBall = false;
        bool crazyBall = false;
        bool decoyBall = false;
        bool invisiblePlayers = false;
        bool reversedControls = false;
        bool projectilesDisabled = false;
        bool hidePowerBars = false;
        COLORREF ballColor = RGB(255, 255, 255);
        std::string message;
        std::string kodeName;
    };

    struct CheatState {
        bool unlockAll = false;
        bool infiniteP1 = false;
        bool infiniteP2 = false;
        bool freezeCpu = false;
        bool oneHit = false;
        bool disableProjectiles = false;
        bool showHitboxes = false;
        int ballSpeedIndex = 1;
        int stageIndex = 0;
    };

    void changeScreen(Screen screen);
    void closeControllerSettings();
    void setDefaultControllerSettings();
    void loadControllerSettings();
    void saveControllerSettings() const;
    void initializeXInput();
    void shutdownXInput();
    void pollControllers();
    void handleControllerAction(int player, ControlAction action);
    void handleSettingsAction(ControlAction action);
    bool actionHeld(int player, ControlAction action) const;
    int actionForKeyboardKey(int player, int virtualKey) const;
    static std::string keyboardKeyName(int virtualKey);
    static std::string gamepadInputName(std::uint32_t input);
    static std::string controlActionName(ControlAction action);
    void startSelection(bool twoPlayer);
    void confirmSelection(int player);
    void beginVersus();
    void applyKombatKode();
    void startMatch();
    void resetRound(bool firstRound);
    void resetBall(int direction = 0);
    void updateMatch(double dt);
    void updatePaddles(double dt);
    void updateBall(double dt);
    void updateProjectiles(double dt);
    void updateCpu(double dt);
    void damagePlayer(int player, int amount, bool ballDamage);
    void beginFinish(int loser);
    void endRound(int winner, const std::string& banner = {});
    void finishMatch(int winner);
    void spawnProjectile(int player, const MoveDefinition& move);
    void performMove(int player, const MoveDefinition& move);
    void pushToken(int player, Token token);
    bool historyMatches(int player, std::string_view sequence, double window = 2.0) const;
    bool checkMove(int player);
    bool checkHiddenSelection(int player);
    void trimHistory(int player);
    void handleCheatKey(int virtualKey);
    void activateCheatItem(int direction);
    void cheatSkipScreen();
    void cheatWinRound();

    void renderIntro();
    void renderTitle();
    void renderControllerSettings();
    void renderSelection();
    void renderVersus();
    void renderMatch();
    void renderContinue();
    void renderGameOver();
    void renderEnding();
    void renderCredits();
    void renderCheatMenu();
    void renderPaddle(const Paddle& paddle, int player);
    void renderProjectile(const Projectile& projectile);
    void renderHitbox(float x, float y, float w, float h, COLORREF color);

    bool key(int virtualKey) const;
    bool pressed(int virtualKey) const;
    float randomFloat(float minimum, float maximum);
    static bool intersects(float ax, float ay, float aw, float ah,
                           float bx, float by, float bw, float bh);
    static COLORREF characterColor(int id);

    Renderer& renderer_;
    AudioEngine& audio_;
    bool loadSavedControllerSettings_ = true;
    bool trilogyMode_ = false;
    bool settingsReturnToCollection_ = false;
    bool returnRequested_ = false;
    Screen screen_ = Screen::Intro;
    MatchPhase matchPhase_ = MatchPhase::RoundIntro;
    double clock_ = 0;
    double screenTimer_ = 0;
    double phaseTimer_ = 0;
    double cpuActionTimer_ = 0;
    std::array<bool, 256> keys_{};
    std::array<bool, 256> pressed_{};
    std::array<std::array<Binding, static_cast<std::size_t>(ControlAction::Count)>, 2> bindings_{};
    std::array<int, 2> controllerSlots_{{0, 1}};
    std::array<std::uint32_t, 4> controllerMasks_{};
    std::array<std::uint32_t, 4> previousControllerMasks_{};
    std::array<bool, 4> controllerConnected_{};
    HMODULE xinputModule_ = nullptr;
    using XInputGetStateFunction = DWORD(WINAPI*)(DWORD, XINPUT_STATE*);
    XInputGetStateFunction xinputGetState_ = nullptr;
    int settingsPlayer_ = 0;
    int settingsRow_ = 0;
    bool settingsCapturing_ = false;
    ControlAction settingsCaptureAction_ = ControlAction::Left;
    std::array<std::deque<TokenEvent>, 2> histories_;
    std::array<int, 6> kodeDigits_{};
    std::string titleTyped_;
    std::string titleMessage_;
    double titleMessageTimer_ = 0;

    bool twoPlayer_ = false;
    bool selectionConfirmed_[2] = {false, false};
    int selection_[2] = {0, 2};
    int titleChoice_ = 0;
    int ladderIndex_ = 0;
    int credits_ = 3;
    int matchNumber_ = 0;
    int roundNumber_ = 1;
    int matchWinner_ = -1;
    int finishingPlayer_ = -1;
    std::string roundBanner_;
    std::string moveBanner_;
    double moveBannerTimer_ = 0;

    Paddle paddles_[2];
    Ball ball_;
    std::vector<Projectile> projectiles_;
    MatchModifiers modifiers_;
    CheatState cheats_;
    bool cheatOpen_ = false;
    bool paused_ = false;
    int cheatSelection_ = 0;
    std::uint32_t randomState_ = 0x504b3332u;
};

} // namespace pk3
