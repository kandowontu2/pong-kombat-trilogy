#include "legacy_game.hpp"

#include "pk3_asset_catalog.hpp"
#include "resource_ids.hpp"

#include <algorithm>
#include <cmath>
#include <cstring>
#include <string>

namespace pk3 {
namespace {

constexpr std::array<const char*, 8> kPk1Names{{
    "BLUE", "GREEN", "RED", "PURPLE", "YELLOW", "WHITE", "MONOLITH", "SHIFTER"}};
constexpr std::array<const char*, 21> kPk2Names{{
    "AQUA", "MONOLITH", "GREEN", "CYBER", "BLOODSTONE", "ROCK", "SPIKE", "SHIFTER", "MAGMA",
    "WHITE", "ACID", "CHIEF", "BLUE", "RED", "PLAID", "WACKY", "CIGARETTE", "AWESOME",
    "PURPLE", "ART", "RYAN"}};

constexpr const char* kPk1Specials[5] = {"1111", "UDU1", "DU11", "UUU1", "UDUD"};
constexpr const char* kPk1Fatalities[5] = {"U1U1", "DUD1", "DDD1", "1UUU", "DUDU"};
constexpr const char* kPk1FatalityNames[5] = {
    "SPIRAL SPLUT", "ARROW IMPALEMENT", "HARPOON RIP", "RAZOR SLICE", "AIR-PUMP EXPLOSION"};

constexpr const char* kPk2Specials[9][3] = {
    {"FFB2", "FUU1", nullptr}, {"DFB22", "FDF2", nullptr},
    {"DUD1", "FFF2", nullptr}, {"B2F1", "DD2", nullptr},
    {"FF111", "UUDD22", nullptr}, {"DDUB2", "BBUB1", nullptr},
    {"FBFB2", "22222", nullptr}, {"BBF1", "FFF11", nullptr},
    {"BF1", "BB1", "BBFF2"}};
constexpr const char* kPk2Dismantles[9] = {
    "FFD2D", "BBUD1", "UDU2", "FBB2D", "UUU21U", "DDBDU1", "BBDU1", "DFFB2", "DDDBU"};
constexpr const char* kPk2DismantleNames[9] = {
    "FREEZE RAM", "MONOLITH MASH", "TRIPLE ARROW", "CLAMP SMASH", "HEAD REMOVAL",
    "BOULDER BREAK", "SPIKE RUSH", "SABER STAB", "MAGMA CRUMBLE"};
constexpr const char* kPk2SecretSpecials[12] = {
    "1", "FF2", "1", "1111", "DU11", "BBD2", "DF1", "FFF2", "BDB2", "UUU1", "1", "1"};

RECT area(int left, int top, int right, int bottom) { return RECT{left, top, right, bottom}; }

constexpr std::uint32_t kPadStickLeft = 1u << 16u;
constexpr std::uint32_t kPadStickRight = 1u << 17u;
constexpr std::uint32_t kPadStickUp = 1u << 18u;
constexpr std::uint32_t kPadStickDown = 1u << 19u;
constexpr std::uint32_t kPadLeftTrigger = 1u << 20u;
constexpr std::uint32_t kPadRightTrigger = 1u << 21u;

} // namespace

LegacyGame::LegacyGame(Edition edition, Renderer& renderer, AudioEngine& audio)
    : edition_(edition), renderer_(renderer), audio_(audio) {}

LegacyGame::~LegacyGame() { shutdownControllers(); }

void LegacyGame::initialize() {
    renderer_.setCanvasSize(edition_ == Edition::PongKombat ? 320 : 640,
                            edition_ == Edition::PongKombat ? 200 : 480);
    screen_ = Screen::Intro;
    screenTime_ = 0;
    returnRequested_ = false;
    paused_ = false;
    keys_.fill(false);
    codeInput_.clear();
    initializeControllers();
    if (edition_ == Edition::PongKombat) audio_.playResource(kPk1SoundResourceBase + 28);
    else audio_.playMusicResource(kPk2MusicResourceBase + 11);
}

void LegacyGame::initializeControllers() {
    constexpr std::array<std::uint32_t, 7> defaults{
        kPadStickLeft | XINPUT_GAMEPAD_DPAD_LEFT,
        kPadStickRight | XINPUT_GAMEPAD_DPAD_RIGHT,
        kPadStickUp | XINPUT_GAMEPAD_DPAD_UP,
        kPadStickDown | XINPUT_GAMEPAD_DPAD_DOWN,
        XINPUT_GAMEPAD_A, XINPUT_GAMEPAD_B, XINPUT_GAMEPAD_START};
    controllerBindings_[0] = defaults;
    controllerBindings_[1] = defaults;
    struct StoredSettings {
        DWORD version;
        std::int32_t slots[2];
        std::int32_t keys[14];
        std::uint32_t pads[14];
    } stored{};
    DWORD size = sizeof(stored);
    if (RegGetValueW(HKEY_CURRENT_USER, L"Software\\PongKombat3Native",
                     L"ControllerSettingsV1", RRF_RT_REG_BINARY, nullptr, &stored, &size) == ERROR_SUCCESS &&
        size == sizeof(stored) && stored.version == 1) {
        for (int player = 0; player < 2; ++player) {
            controllerSlots_[player] = std::clamp<int>(stored.slots[player], -1, 3);
            for (int action = 0; action < 7; ++action)
                controllerBindings_[player][action] = stored.pads[player * 7 + action];
        }
    }
    static constexpr const wchar_t* libraries[]{L"xinput1_4.dll", L"xinput1_3.dll", L"xinput9_1_0.dll"};
    for (const wchar_t* library : libraries) {
        xinputModule_ = LoadLibraryW(library);
        if (xinputModule_) {
            FARPROC procedure = GetProcAddress(xinputModule_, "XInputGetState");
            static_assert(sizeof(procedure) == sizeof(xinputGetState_));
            std::memcpy(&xinputGetState_, &procedure, sizeof(procedure));
            if (xinputGetState_) break;
            FreeLibrary(xinputModule_);
            xinputModule_ = nullptr;
        }
    }
}

void LegacyGame::shutdownControllers() {
    if (xinputModule_) FreeLibrary(xinputModule_);
    xinputModule_ = nullptr;
    xinputGetState_ = nullptr;
}

void LegacyGame::pollControllers() {
    if (!xinputGetState_) return;
    const int pk1P1[7]{'W', 'X', 'W', 'X', VK_LSHIFT, VK_SPACE, VK_RETURN};
    const int pk1P2[7]{VK_LEFT, VK_RIGHT, VK_UP, VK_DOWN, VK_RSHIFT, VK_SPACE, VK_RETURN};
    const int pk2P1[7]{VK_LEFT, VK_RIGHT, VK_UP, VK_DOWN, VK_LSHIFT, VK_LCONTROL, VK_RETURN};
    const int pk2P2[7]{VK_NUMPAD4, VK_NUMPAD6, VK_NUMPAD8, VK_NUMPAD2, VK_ADD, VK_RETURN, VK_SPACE};
    for (int player = 0; player < 2; ++player) {
        const int slot = controllerSlots_[player];
        std::uint32_t mask = 0;
        XINPUT_STATE state{};
        if (slot >= 0 && xinputGetState_(slot, &state) == ERROR_SUCCESS) {
            mask = state.Gamepad.wButtons;
            if (state.Gamepad.sThumbLX < -16000) mask |= kPadStickLeft;
            if (state.Gamepad.sThumbLX > 16000) mask |= kPadStickRight;
            if (state.Gamepad.sThumbLY > 16000) mask |= kPadStickUp;
            if (state.Gamepad.sThumbLY < -16000) mask |= kPadStickDown;
            if (state.Gamepad.bLeftTrigger > 30) mask |= kPadLeftTrigger;
            if (state.Gamepad.bRightTrigger > 30) mask |= kPadRightTrigger;
        }
        for (int action = 0; action < 7; ++action) {
            const bool down = (mask & controllerBindings_[player][action]) != 0;
            if (down == previousControllerActions_[player][action]) continue;
            const int* keys = edition_ == Edition::PongKombat
                ? (player == 0 ? pk1P1 : pk1P2)
                : (player == 0 ? pk2P1 : pk2P2);
            const int key = keys[action];
            if (down) onKeyDown(key, false);
            else onKeyUp(key);
            previousControllerActions_[player][action] = down;
        }
    }
}

int LegacyGame::pk1Picture(std::string_view name) const {
    for (const auto& picture : generated::kPk1Pictures)
        if (picture.name == name) return picture.resource;
    return 0;
}

const Image& LegacyGame::pk1Image(std::string_view name) {
    return renderer_.pictureResource(pk1Picture(name));
}

const Image& LegacyGame::pk2Image(int index) {
    return renderer_.pictureResource(kPk2PictureResourceBase + index);
}

bool LegacyGame::held(int key) const {
    return key >= 0 && key < static_cast<int>(keys_.size()) && keys_[key];
}

void LegacyGame::toggleCheatMenu() {
    cheatOpen_ = !cheatOpen_;
    cheatChoice_ = 0;
}

bool LegacyGame::runReturnLifecycleSelfTest() {
    playerCount_ = 2;
    continueTournament_ = false;
    tournamentComplete_ = false;
    screen_ = Screen::PostGame;
    screenTime_ = 5.01;
    returnRequested_ = false;
    update(0.0);
    if (!returnRequested_) return false;
    tournamentComplete_ = true;
    screen_ = Screen::PostGame;
    screenTime_ = 9.01;
    returnRequested_ = false;
    update(0.0);
    return returnRequested_;
}

bool LegacyGame::runSpecialMoveSelfTest() {
    playerCount_ = 2;
    const int characterCount = edition_ == Edition::PongKombat ? 5 : 9;
    for (int character = 0; character < characterCount; ++character) {
        selection_[0] = character;
        startMatch();
        projectileCooldown_[0] = 0;
        const std::string_view sequence = edition_ == Edition::PongKombat
            ? std::string_view(kPk1Specials[character])
            : std::string_view(kPk2Specials[character][0]);
        for (char token : sequence) pushInput(0, token);
        if (!projectileActive_[0]) return false;

        beginFinish(0);
        const std::string_view finisher = edition_ == Edition::PongKombat
            ? std::string_view(kPk1Fatalities[character])
            : std::string_view(kPk2Dismantles[character]);
        for (char token : finisher) pushInput(0, token);
        if (!finisherPerformed_) return false;
    }
    if (edition_ == Edition::PongKombat2) {
        for (int character = 9; character < 21; ++character) {
            selection_[0] = character;
            startMatch();
            projectileCooldown_[0] = 0;
            for (char token : std::string_view(kPk2SecretSpecials[character - 9])) pushInput(0, token);
            if (!projectileActive_[0]) return false;
        }
    } else {
        static constexpr const char* hiddenSpecials[]{"1", "11", "1"};
        for (int character = 5; character < 8; ++character) {
            selection_[0] = character;
            startMatch();
            projectileCooldown_[0] = 0;
            for (char token : std::string_view(hiddenSpecials[character - 5])) pushInput(0, token);
            if (!projectileActive_[0]) return false;
        }
    }
    return true;
}

void LegacyGame::onKeyDown(int virtualKey, bool repeat) {
    if (virtualKey >= 0 && virtualKey < static_cast<int>(keys_.size())) keys_[virtualKey] = true;
    if (repeat) return;
    if (edition_ == Edition::PongKombat2 && (screen_ == Screen::Intro || screen_ == Screen::Mode) &&
        virtualKey >= 'A' && virtualKey <= 'Z') {
        codeInput_.push_back(static_cast<char>(virtualKey));
        if (codeInput_.size() > 7) codeInput_.erase(codeInput_.begin());
        if (codeInput_ == "RYANART") {
            unlockSecrets_ = true;
            playerCount_ = 1;
            selection_[0] = 9;
            selection_[1] = 0;
            tournamentIndex_ = 0;
            screen_ = Screen::Select;
            screenTime_ = 0;
            codeInput_.clear();
            return;
        }
    }
    if (virtualKey == VK_F12) {
        returnRequested_ = true;
        return;
    }
    if (cheatOpen_) {
        if (virtualKey == VK_ESCAPE) cheatOpen_ = false;
        else if (virtualKey == VK_UP || virtualKey == 'W') cheatChoice_ = (cheatChoice_ + 4) % 5;
        else if (virtualKey == VK_DOWN || virtualKey == 'X') cheatChoice_ = (cheatChoice_ + 1) % 5;
        else if (virtualKey == VK_RETURN || virtualKey == VK_SPACE) {
            if (cheatChoice_ == 0) unlockSecrets_ = !unlockSecrets_;
            if (cheatChoice_ == 1) infiniteP1_ = !infiniteP1_;
            if (cheatChoice_ == 2) freezeCpu_ = !freezeCpu_;
            if (cheatChoice_ == 3) turboBall_ = !turboBall_;
            if (cheatChoice_ == 4 && screen_ == Screen::Match) {
                score_[0] = 9;
                scorePoint(0);
            }
        }
        return;
    }

    if (virtualKey == VK_ESCAPE && screen_ != Screen::Match) {
        returnRequested_ = true;
        return;
    }
    switch (screen_) {
    case Screen::Intro:
        if (virtualKey == VK_RETURN || virtualKey == VK_SPACE) {
            screen_ = Screen::Mode;
            screenTime_ = 0;
        }
        break;
    case Screen::Mode:
        if (virtualKey == VK_UP || virtualKey == VK_LEFT || virtualKey == 'W') menuChoice_ = 0;
        if (virtualKey == VK_DOWN || virtualKey == VK_RIGHT || virtualKey == 'S' || virtualKey == 'X') menuChoice_ = 1;
        if (virtualKey == VK_RETURN || virtualKey == VK_SPACE) {
            playerCount_ = menuChoice_ + 1;
            tournamentIndex_ = 0;
            screen_ = Screen::Select;
            screenTime_ = 0;
        }
        break;
    case Screen::Select: {
        const int count = edition_ == Edition::PongKombat ? (unlockSecrets_ ? 8 : 5)
                                                         : (unlockSecrets_ ? 21 : 9);
        if (virtualKey == VK_LEFT || virtualKey == 'W') selection_[0] = (selection_[0] + count - 1) % count;
        if (virtualKey == VK_RIGHT || virtualKey == 'X') selection_[0] = (selection_[0] + 1) % count;
        if (playerCount_ == 2) {
            if (virtualKey == VK_NUMPAD4) selection_[1] = (selection_[1] + count - 1) % count;
            if (virtualKey == VK_NUMPAD6) selection_[1] = (selection_[1] + 1) % count;
        }
        if (virtualKey == VK_RETURN || virtualKey == VK_SPACE || virtualKey == VK_SHIFT ||
            virtualKey == VK_LSHIFT || virtualKey == VK_RSHIFT || virtualKey == VK_LCONTROL ||
            virtualKey == VK_ADD) {
            if (playerCount_ == 1) {
                if (edition_ == Edition::PongKombat) {
                    selection_[1] = selection_[0];
                }
                setTournamentOpponent();
            }
            screen_ = Screen::Versus;
            screenTime_ = 0;
        }
        break;
    }
    case Screen::Versus:
        if (virtualKey == VK_RETURN || virtualKey == VK_SPACE) startMatch();
        break;
    case Screen::Match:
    case Screen::Finish:
        if (virtualKey == VK_ESCAPE) paused_ = !paused_;
        if (edition_ == Edition::PongKombat) {
            if (virtualKey == 'W') pushInput(0, 'U');
            if (virtualKey == 'X') pushInput(0, 'D');
            if (virtualKey == VK_LSHIFT || virtualKey == VK_SHIFT) pushInput(0, '1');
            if (virtualKey == VK_UP) pushInput(1, 'U');
            if (virtualKey == VK_DOWN) pushInput(1, 'D');
            if (virtualKey == VK_RSHIFT) pushInput(1, '1');
        } else {
            if (virtualKey == VK_UP) pushInput(0, 'U');
            if (virtualKey == VK_DOWN) pushInput(0, 'D');
            if (virtualKey == VK_LEFT) pushInput(0, 'B');
            if (virtualKey == VK_RIGHT) pushInput(0, 'F');
            if (virtualKey == VK_LSHIFT || virtualKey == VK_SHIFT) pushInput(0, '1');
            if (virtualKey == VK_LCONTROL || virtualKey == VK_CONTROL) pushInput(0, '2');
            if (virtualKey == VK_NUMPAD8) pushInput(1, 'U');
            if (virtualKey == VK_NUMPAD2) pushInput(1, 'D');
            if (virtualKey == VK_NUMPAD6) pushInput(1, 'B');
            if (virtualKey == VK_NUMPAD4) pushInput(1, 'F');
            if (virtualKey == VK_ADD) pushInput(1, '1');
            if (virtualKey == VK_RETURN) pushInput(1, '2');
        }
        break;
    case Screen::PostGame:
        if (virtualKey == VK_RETURN || virtualKey == VK_SPACE || virtualKey == VK_ESCAPE)
            advancePostGame();
        break;
    }
}

void LegacyGame::pushInput(int player, char token) {
    if (player < 0 || player > 1) return;
    auto& history = inputHistory_[player];
    history.push_back({token, screenTime_});
    while (!history.empty() && screenTime_ - history.front().time > 2.5) history.pop_front();
    while (history.size() > 12) history.pop_front();
    if (screen_ == Screen::Finish) tryFinisher(player);
    else trySpecial(player);
}

bool LegacyGame::inputEndsWith(int player, std::string_view sequence) const {
    const auto& history = inputHistory_[player];
    if (history.size() < sequence.size()) return false;
    const std::size_t start = history.size() - sequence.size();
    for (std::size_t i = 0; i < sequence.size(); ++i)
        if (history[start + i].token != sequence[i]) return false;
    return true;
}

void LegacyGame::trySpecial(int player) {
    if (projectileCooldown_[player] > 0 || projectileActive_[player]) return;
    bool matched = false;
    if (edition_ == Edition::PongKombat) {
        const int character = selection_[player];
        if (character >= 0 && character < 5)
            matched = inputEndsWith(player, kPk1Specials[character]);
        else if (character == 5)
            matched = inputEndsWith(player, "1");
        else if (character == 6)
            matched = inputEndsWith(player, "11");
        else if (character == 7)
            matched = inputEndsWith(player, "1");
    } else {
        const int character = std::clamp(selection_[player], 0, 20);
        if (character < 9) {
            for (const char* sequence : kPk2Specials[character])
                if (sequence && inputEndsWith(player, sequence)) matched = true;
        } else {
            matched = inputEndsWith(player, kPk2SecretSpecials[character - 9]);
            if (character == 9 || character == 11)
                matched = matched || inputEndsWith(player, "2");
        }
    }
    if (matched) {
        spawnProjectile(player);
        inputHistory_[player].clear();
    }
}

void LegacyGame::tryFinisher(int player) {
    if (player != winner_ || finisherPerformed_) return;
    const int character = selection_[player];
    if (edition_ == Edition::PongKombat) {
        if (character >= 0 && character < 5 && inputEndsWith(player, kPk1Fatalities[character])) {
            finisherPerformed_ = true;
            finisherLabel_ = kPk1FatalityNames[character];
        } else if (inputEndsWith(player, "DDDD")) {
            finisherPerformed_ = true;
            finisherLabel_ = "PIT FATALITY";
        } else if (inputEndsWith(player, "UUDD")) {
            finisherPerformed_ = true;
            finisherLabel_ = "TOXIC RIVER FATALITY";
        } else if (flawlessWin_ && inputEndsWith(player, "111U")) {
            finisherPerformed_ = true;
            finisherLabel_ = "SPAMALITY";
        }
    } else if (character >= 0 && character < 9 && inputEndsWith(player, kPk2Dismantles[character])) {
        finisherPerformed_ = true;
        finisherLabel_ = kPk2DismantleNames[character];
    } else if ((character == 1 || character == 2) && inputEndsWith(player, "FDBUUUUDBF")) {
        finisherPerformed_ = true;
        finisherLabel_ = "NUDEALITY";
    } else if (character == 7 && flawlessWin_ && inputEndsWith(player, "111U")) {
        finisherPerformed_ = true;
        finisherLabel_ = "SPAM LITE-ALITY";
    }
    if (finisherPerformed_) {
        screenTime_ = 0;
        audio_.stopAll();
        if (edition_ == Edition::PongKombat) audio_.playResource(kPk1SoundResourceBase + 10);
        else audio_.playResource(kPk2SoundResourceBase + 10);
        inputHistory_[player].clear();
    }
}

void LegacyGame::spawnProjectile(int player) {
    projectileActive_[player] = true;
    projectileCooldown_[player] = 0.7;
    projectileX_[player] = player == 0 ? (edition_ == Edition::PongKombat ? 20.0f : 45.0f)
                                       : renderer_.canvasWidth() - (edition_ == Edition::PongKombat ? 28.0f : 55.0f);
    projectileY_[player] = paddleY_[player] + (edition_ == Edition::PongKombat ? 12.0f : 30.0f);
}

void LegacyGame::onKeyUp(int virtualKey) {
    if (virtualKey >= 0 && virtualKey < static_cast<int>(keys_.size())) keys_[virtualKey] = false;
}

void LegacyGame::startMatch() {
    screen_ = Screen::Match;
    screenTime_ = 0;
    score_[0] = score_[1] = 0;
    health_[0] = health_[1] = 100;
    roundTime_ = 99.0;
    roundIntroTime_ = 2.0;
    projectileActive_[0] = projectileActive_[1] = false;
    inputHistory_[0].clear();
    inputHistory_[1].clear();
    paused_ = false;
    finisherPerformed_ = false;
    flawlessWin_ = false;
    finisherLabel_ = nullptr;
    tournamentComplete_ = false;
    const float center = renderer_.canvasHeight() * 0.5f;
    paddleY_[0] = paddleY_[1] = center - (edition_ == Edition::PongKombat ? 15.0f : 35.0f);
    resetBall();
    if (edition_ == Edition::PongKombat) {
        audio_.playResource(kPk1SoundResourceBase + 1);
    } else {
        static constexpr int musicForCharacter[]{5, 2, 7, 6, 4, 3, 9, 1, 8, 10};
        audio_.playMusicResource(kPk2MusicResourceBase + musicForCharacter[selection_[1] % 10]);
        audio_.playResource(kPk2SoundResourceBase + 8);
    }
}

void LegacyGame::beginFinish(int player) {
    if (screen_ == Screen::Finish || screen_ == Screen::PostGame) return;
    winner_ = player;
    flawlessWin_ = edition_ == Edition::PongKombat
        ? score_[1 - player] == 0
        : health_[player] == 100;
    finisherPerformed_ = false;
    finisherLabel_ = nullptr;
    projectileActive_[0] = projectileActive_[1] = false;
    ballVx_ = ballVy_ = 0;
    inputHistory_[0].clear();
    inputHistory_[1].clear();
    screen_ = Screen::Finish;
    screenTime_ = 0;
    paused_ = false;
    audio_.stopAll();
    if (edition_ == Edition::PongKombat) audio_.playResource(kPk1SoundResourceBase + 7);
    else audio_.playResource(kPk2SoundResourceBase + 12);
}

int LegacyGame::tournamentOpponentCount() const {
    // Every regular opponent except the selected fighter, followed by White Paddle.
    return edition_ == Edition::PongKombat ? 5 : 9;
}

void LegacyGame::setTournamentOpponent() {
    if (edition_ == Edition::PongKombat) {
        const int human = std::clamp(selection_[1], 0, 4);
        if (tournamentIndex_ >= 4) {
            selection_[0] = 5;
            return;
        }
        int candidate = (human + 1) % 5;
        for (int i = 0; i < tournamentIndex_; ++i) {
            candidate = (candidate + 1) % 5;
            if (candidate == human) candidate = (candidate + 1) % 5;
        }
        selection_[0] = candidate;
    } else {
        const int human = std::clamp(selection_[0], 0, 8);
        if (tournamentIndex_ >= 8) {
            selection_[1] = 9;
            return;
        }
        int candidate = (human + 1) % 9;
        for (int i = 0; i < tournamentIndex_; ++i) {
            candidate = (candidate + 1) % 9;
            if (candidate == human) candidate = (candidate + 1) % 9;
        }
        selection_[1] = candidate;
    }
}

void LegacyGame::finishMatch(int player) {
    winner_ = player;
    continueTournament_ = false;
    tournamentComplete_ = false;
    if (playerCount_ == 1) {
        const int human = edition_ == Edition::PongKombat ? 1 : 0;
        if (player == human && tournamentIndex_ + 1 < tournamentOpponentCount())
            continueTournament_ = true;
        else if (player == human)
            tournamentComplete_ = true;
    }
    screen_ = Screen::PostGame;
    screenTime_ = 0;
    audio_.stopAll();
    if (edition_ == Edition::PongKombat) audio_.playResource(kPk1SoundResourceBase + 6);
    else audio_.playMusicResource(kPk2MusicResourceBase + 13);
}

void LegacyGame::advancePostGame() {
    if (!continueTournament_) {
        returnRequested_ = true;
        return;
    }
    ++tournamentIndex_;
    setTournamentOpponent();
    screen_ = Screen::Versus;
    screenTime_ = 0;
    continueTournament_ = false;
}

void LegacyGame::resetBall(int direction) {
    ballX_ = renderer_.canvasWidth() * 0.5f;
    ballY_ = renderer_.canvasHeight() * 0.5f;
    if (!direction) direction = ((score_[0] + score_[1]) & 1) ? -1 : 1;
    ballVx_ = static_cast<float>(direction) * (edition_ == Edition::PongKombat ? 95.0f : 210.0f);
    ballVy_ = ((score_[0] * 31 + score_[1] * 17) % 2 ? -1.0f : 1.0f) *
              (edition_ == Edition::PongKombat ? 52.0f : 118.0f);
}

void LegacyGame::scorePoint(int player) {
    if (edition_ == Edition::PongKombat) audio_.playResource(kPk1SoundResourceBase + 1);
    else audio_.playResource(kPk2SoundResourceBase + 1);
    if (edition_ == Edition::PongKombat2) {
        ++score_[player];
        if (score_[player] >= 10) {
            beginFinish(player);
            return;
        }
        resetBall(player == 0 ? 1 : -1);
        return;
    }
    if (!infiniteP1_ || player == 0) ++score_[player];
    if (score_[player] >= 10) {
        beginFinish(player);
        return;
    }
    resetBall(player == 0 ? 1 : -1);
}

void LegacyGame::update(double dt) {
    screenTime_ += dt;
    audio_.update();
    pollControllers();
    if (screen_ == Screen::Intro && screenTime_ > 6.0) {
        screen_ = Screen::Mode;
        screenTime_ = 0;
    }
    if (screen_ == Screen::PostGame && screenTime_ > (tournamentComplete_ ? 9.0 : 5.0)) {
        // Native lifecycle: go back to the in-process trilogy selector. Never display
        // the legacy engine's shutdown/close window.
        advancePostGame();
    }
    if (screen_ == Screen::Finish && screenTime_ > (finisherPerformed_ ? 3.5 : 4.5)) {
        finishMatch(winner_);
        return;
    }
    if (screen_ != Screen::Match || paused_ || cheatOpen_) return;

    if (edition_ == Edition::PongKombat2) {
        roundIntroTime_ = std::max(0.0, roundIntroTime_ - dt);
        if (roundIntroTime_ <= 0.0) roundTime_ = std::max(0.0, roundTime_ - dt);
        if (roundTime_ <= 0.0) {
            beginFinish((score_[0] * 100 + health_[0]) >= (score_[1] * 100 + health_[1]) ? 0 : 1);
            return;
        }
    }

    const float scale = edition_ == Edition::PongKombat ? 1.0f : 2.35f;
    const float paddleHeight = edition_ == Edition::PongKombat ? 30.0f : 72.0f;
    const float speed = (edition_ == Edition::PongKombat ? 105.0f : 260.0f) * static_cast<float>(dt);
    if (edition_ == Edition::PongKombat && playerCount_ == 1) {
        if (!freezeCpu_) {
            const float target = ballY_ - paddleHeight * 0.5f;
            paddleY_[0] += std::clamp(target - paddleY_[0], -speed * 0.78f, speed * 0.78f);
        }
        if (held(VK_UP)) paddleY_[1] -= speed;
        if (held(VK_DOWN)) paddleY_[1] += speed;
    } else {
        if (held('W') || held(VK_UP)) paddleY_[0] -= speed;
        if (held('X') || held(VK_DOWN)) paddleY_[0] += speed;
        if (playerCount_ == 2) {
            if (edition_ == Edition::PongKombat) {
                if (held(VK_UP)) paddleY_[1] -= speed;
                if (held(VK_DOWN)) paddleY_[1] += speed;
            } else {
                if (held(VK_NUMPAD8)) paddleY_[1] -= speed;
                if (held(VK_NUMPAD2)) paddleY_[1] += speed;
            }
        } else if (!freezeCpu_) {
            const float target = ballY_ - paddleHeight * 0.5f;
            paddleY_[1] += std::clamp(target - paddleY_[1], -speed * 0.78f, speed * 0.78f);
        }
    }
    const float top = edition_ == Edition::PongKombat ? 18.0f : 62.0f;
    const float bottom = static_cast<float>(renderer_.canvasHeight()) - paddleHeight - 4.0f;
    paddleY_[0] = std::clamp(paddleY_[0], top, bottom);
    paddleY_[1] = std::clamp(paddleY_[1], top, bottom);
    projectileCooldown_[0] = std::max(0.0, projectileCooldown_[0] - dt);
    projectileCooldown_[1] = std::max(0.0, projectileCooldown_[1] - dt);

    const float projectileSpeed = edition_ == Edition::PongKombat ? 125.0f : 290.0f;
    for (int player = 0; player < 2; ++player) {
        if (!projectileActive_[player]) continue;
        projectileX_[player] += (player == 0 ? 1.0f : -1.0f) * projectileSpeed * static_cast<float>(dt);
        const int opponent = 1 - player;
        const float opponentX = opponent == 0 ? (edition_ == Edition::PongKombat ? 13.0f : 25.0f)
                                               : renderer_.canvasWidth() - (edition_ == Edition::PongKombat ? 18.0f : 35.0f);
        const float hitWidth = edition_ == Edition::PongKombat ? 10.0f : 24.0f;
        if (std::abs(projectileX_[player] - opponentX) <= hitWidth &&
            projectileY_[player] >= paddleY_[opponent] - 8.0f &&
            projectileY_[player] <= paddleY_[opponent] + paddleHeight + 8.0f) {
            projectileActive_[player] = false;
            if (edition_ == Edition::PongKombat) {
                scorePoint(player);
            } else {
                if (!(infiniteP1_ && opponent == 0)) health_[opponent] = std::max(0, health_[opponent] - 20);
                if (health_[opponent] == 0) {
                    beginFinish(player);
                }
            }
        } else if (projectileX_[player] < -64 || projectileX_[player] > renderer_.canvasWidth() + 64) {
            projectileActive_[player] = false;
        }
    }

    const float velocityScale = turboBall_ ? 1.75f : 1.0f;
    ballX_ += ballVx_ * static_cast<float>(dt) * velocityScale;
    ballY_ += ballVy_ * static_cast<float>(dt) * velocityScale;
    const float radius = 5.0f * scale;
    if (ballY_ - radius < top) { ballY_ = top + radius; ballVy_ = std::abs(ballVy_); }
    if (ballY_ + radius > renderer_.canvasHeight() - 2) {
        ballY_ = renderer_.canvasHeight() - 2.0f - radius;
        ballVy_ = -std::abs(ballVy_);
    }
    const float leftX = edition_ == Edition::PongKombat ? 13.0f : 25.0f;
    const float rightX = renderer_.canvasWidth() - (edition_ == Edition::PongKombat ? 18.0f : 35.0f);
    const float paddleWidth = edition_ == Edition::PongKombat ? 5.0f : 10.0f;
    if (ballVx_ < 0 && ballX_ - radius <= leftX + paddleWidth && ballX_ > leftX - radius &&
        ballY_ + radius >= paddleY_[0] && ballY_ - radius <= paddleY_[0] + paddleHeight) {
        ballX_ = leftX + paddleWidth + radius;
        ballVx_ = std::abs(ballVx_) * 1.035f;
        ballVy_ += (ballY_ - (paddleY_[0] + paddleHeight * .5f)) * 2.0f;
    }
    if (ballVx_ > 0 && ballX_ + radius >= rightX && ballX_ < rightX + paddleWidth + radius &&
        ballY_ + radius >= paddleY_[1] && ballY_ - radius <= paddleY_[1] + paddleHeight) {
        ballX_ = rightX - radius;
        ballVx_ = -std::abs(ballVx_) * 1.035f;
        ballVy_ += (ballY_ - (paddleY_[1] + paddleHeight * .5f)) * 2.0f;
    }
    if (ballX_ < -radius) scorePoint(1);
    if (ballX_ > renderer_.canvasWidth() + radius) scorePoint(0);
}

void LegacyGame::render() {
    renderer_.clear();
    if (edition_ == Edition::PongKombat) renderPk1();
    else renderPk2();
    if (cheatOpen_) renderCheats();
}

void LegacyGame::renderPk1() {
    if (screen_ == Screen::Intro) {
        const int frame = std::clamp(static_cast<int>(screenTime_ / 1.0) + 1, 1, 6);
        renderer_.blit(pk1Image("stills/intro" + std::to_string(frame) + ".png"), 0, 0);
    }
    else if (screen_ == Screen::Mode) {
        renderer_.blit(pk1Image("stills/select0.png"), 0, 0);
        if (menuChoice_ == 0)
            renderer_.strokeRect(84, 63, 152, 35, RGB(255, 255, 0), 2);
        else
            renderer_.strokeRect(78, 105, 164, 46, RGB(255, 255, 0), 2);
    } else if (screen_ == Screen::Select) {
        renderer_.blit(pk1Image("stills/select.png"), 0, 0);
        static constexpr DrawRect selectors[] = {
            {132, 17, 91, 51}, {224, 17, 87, 51}, {132, 70, 91, 52}, {224, 70, 87, 52},
            {132, 124, 91, 53}, {224, 124, 87, 53}, {224, 124, 87, 53}, {224, 124, 87, 53}};
        const DrawRect p1 = selectors[selection_[0] % std::size(selectors)];
        renderer_.strokeRect(p1.x, p1.y, p1.w, p1.h, RGB(255, 255, 0), 2);
        if (playerCount_ == 2) {
            const DrawRect p2 = selectors[selection_[1] % std::size(selectors)];
            renderer_.strokeRect(p2.x + 3, p2.y + 3, std::max(1, p2.w - 6), std::max(1, p2.h - 6),
                                 RGB(255, 30, 20), 2);
        }
        renderer_.fillRect(5, 145, 116, 50, RGB(0, 0, 0));
        renderer_.text("P1: " + std::string(kPk1Names[selection_[0]]), area(7, 148, 119, 169), 8,
                       RGB(255, 255, 0), DT_LEFT | DT_VCENTER | DT_SINGLELINE, false);
        if (playerCount_ == 2)
            renderer_.text("P2: " + std::string(kPk1Names[selection_[1]]), area(7, 172, 119, 193), 8,
                           RGB(255, 60, 40), DT_LEFT | DT_VCENTER | DT_SINGLELINE, false);
        else
            renderer_.text("SHIFT: SELECT", area(7, 172, 119, 193), 7, RGB(60, 255, 90),
                           DT_LEFT | DT_VCENTER | DT_SINGLELINE, false);
    } else if (screen_ == Screen::Versus) {
        const std::string vs = "stills/vs" + std::to_string(selection_[0] % 6 + 1) + ".png";
        renderer_.blit(pk1Image(vs), 0, 0);
        renderer_.text("VS", area(135, 75, 185, 125), 22, RGB(255, 0, 0));
    } else if (screen_ == Screen::Match || screen_ == Screen::Finish) {
        renderMatch();
        if (screen_ == Screen::Finish) renderFinishOverlay();
    }
    else {
        const int winningCharacter = std::clamp(selection_[winner_], 0, 4);
        renderer_.blit(pk1Image("stills/winner" + std::to_string(winningCharacter + 1) + ".png"), 0, 0);
        renderer_.text(winner_ == 0 ? "PLAYER 1 WINS" : "PLAYER 2 WINS", area(20, 142, 300, 174), 15,
                       RGB(255, 255, 0));
        if (tournamentComplete_) {
            static constexpr const char* endings[]{
                "BLUE MARKETS PONG KOMBAT", "GREEN RETIRES TO WRITE", "RED BECOMES A MOVIE STAR",
                "PURPLE TAKES OVER THE WORLD", "YELLOW HOCKS THE TROPHY"};
            renderer_.text("TOURNAMENT COMPLETE", area(30, 166, 290, 183), 9, RGB(255, 255, 255));
            renderer_.text(endings[winningCharacter], area(8, 182, 312, 200), 7, RGB(255, 220, 30));
        } else if (continueTournament_)
            renderer_.text("NEXT OPPONENT", area(65, 178, 255, 198), 8, RGB(255, 255, 255));
    }
}

void LegacyGame::renderPk2() {
    if (screen_ == Screen::Intro) {
        renderer_.blit(pk2Image(81), 0, 0);
    } else if (screen_ == Screen::Mode) {
        renderer_.blitScaled(pk2Image(0), DrawRect{0, 0, 640, 480});
        renderer_.fillRect(128, 235, 384, 145, RGB(0, 0, 0));
        renderer_.strokeRect(128, 235, 384, 145, RGB(190, 20, 20), 2);
        renderer_.text("TOURNAMENT", area(160, 255, 480, 305), 22,
                       menuChoice_ == 0 ? RGB(255, 255, 0) : RGB(180, 180, 180));
        renderer_.text("TWO PLAYER", area(160, 310, 480, 360), 22,
                       menuChoice_ == 1 ? RGB(255, 255, 0) : RGB(180, 180, 180));
    } else if (screen_ == Screen::Select) {
        const bool secretScreen = selection_[0] >= 9 || (playerCount_ == 2 && selection_[1] >= 9);
        renderer_.blit(pk2Image(secretScreen ? 154 : 242), 0, 0);
        static constexpr DrawRect selectors[] = {
            {430, 73, 86, 150}, {520, 77, 76, 148}, {585, 153, 50, 142},
            {465, 235, 107, 164}, {254, 270, 111, 180}, {76, 235, 112, 190},
            {4, 137, 68, 175}, {31, 72, 77, 153}, {94, 74, 108, 151}};
        static constexpr DrawRect secretSelectors[] = {
            {88, 18, 78, 315}, {334, 36, 61, 146}, {263, 36, 68, 154}, {544, 128, 38, 155},
            {535, 267, 70, 190}, {386, 263, 72, 172}, {145, 263, 110, 115}, {36, 158, 74, 170},
            {425, 88, 91, 190}, {205, 39, 55, 164}, {333, 365, 58, 112}, {394, 355, 58, 119}};
        const auto markerFor = [&](int selection) {
            return selection < 9 ? selectors[selection]
                                 : secretSelectors[(selection - 9) % std::size(secretSelectors)];
        };
        const DrawRect marker = markerFor(selection_[0]);
        renderer_.strokeRect(marker.x, marker.y, marker.w, marker.h, RGB(255, 255, 0), 3);
        if (playerCount_ == 2) {
            const DrawRect second = markerFor(selection_[1]);
            renderer_.strokeRect(second.x + 4, second.y + 4, std::max(1, second.w - 8),
                                 std::max(1, second.h - 8), RGB(255, 35, 20), 3);
        }
        renderer_.fillRect(105, 407, 430, 55, RGB(0, 0, 0));
        renderer_.text(kPk2Names[std::clamp(selection_[0], 0, 20)], area(120, 407, 520, 462), 22,
                       RGB(255, 255, 0));
    } else if (screen_ == Screen::Versus) {
        renderer_.blit(pk2Image(135), 0, 0);
        renderer_.text(kPk2Names[selection_[0]], area(25, 355, 285, 420), 20, RGB(90, 230, 255));
        renderer_.text("VS", area(285, 180, 355, 300), 32, RGB(255, 30, 20));
        renderer_.text(kPk2Names[selection_[1]], area(355, 355, 615, 420), 20, RGB(255, 170, 30));
    } else if (screen_ == Screen::Match || screen_ == Screen::Finish) {
        renderMatch();
        if (screen_ == Screen::Finish) renderFinishOverlay();
    }
    else {
        renderer_.blit(pk2Image(65), 0, 0);
        renderer_.fillRect(55, 315, 530, 140, RGB(0, 0, 0));
        renderer_.text(winner_ == 0 ? "PLAYER 1 WINS" : "PLAYER 2 WINS", area(70, 320, 570, 375), 28,
                       RGB(255, 220, 20));
        if (tournamentComplete_) {
            static constexpr const char* endings[]{
                "AQUA MARRIES SHIFTER", "MONOLITH RESTORES THE WORLD", "GREEN CAPTURES WHITE",
                "CYBER AVENGES HIS FAMILY", "BLOODSTONE RECLAIMS THE THRONE", "ROCK RULES THE WASTELAND",
                "SPIKE CONQUERS THE WORLD", "SHIFTER RULES WITH AQUA", "MAGMA REVEALS RAINBOW",
                "WHITE DESTROYS THE WORLD", "ACID DISSOLVES WHITE", "CHIEF DEFEATS HIS MASTER",
                "BLUE STRANGLES WHITE", "RED RETURNS FOR REVENGE", "PLAID TURNS THE WORLD PLAID",
                "WACKY GOES PSYCHO", "CIGARETTE SMOKES WHITE", "AWESOME DEFEATS WHITE",
                "PURPLE BUTCHERS WHITE", "ART PADDLE WINS", "RYAN PADDLE WINS"};
            renderer_.text("TOURNAMENT COMPLETE", area(75, 372, 565, 407), 17, RGB(255, 255, 255));
            renderer_.text(endings[std::clamp(selection_[0], 0, 20)], area(45, 405, 595, 455), 14,
                           RGB(255, 180, 30));
        } else if (continueTournament_)
            renderer_.text("NEXT OPPONENT", area(120, 405, 520, 455), 15, RGB(255, 255, 255));
    }
}

void LegacyGame::renderMatch() {
    const bool first = edition_ == Edition::PongKombat;
    if (first) {
        const std::string zone = "stills/zone" + std::to_string(selection_[1] % 8 + 1) + ".png";
        renderer_.blit(pk1Image(zone), 0, 0);
    } else {
        static constexpr int stages[] = {1419, 801, 1650, 1162, 506, 2311, 2050, 2541, 1854, 118};
        renderer_.blit(pk2Image(stages[selection_[1] % std::size(stages)]), 0, 0);
    }
    for (int player = 0; player < 2; ++player) {
        if (!projectileActive_[player]) continue;
        if (first) {
            const int character = selection_[player] % 8 + 1;
            const std::string path = "sprites/p" + std::to_string(character) +
                                     (player == 0 ? "z1/0000.png" : "z2/0000.png");
            renderer_.blitKeyed(pk1Image(path), static_cast<int>(projectileX_[player]),
                                static_cast<int>(projectileY_[player]));
        } else {
            static constexpr int projectilePictures[] = {
                90, 89, 175, 113, 92, 188, 87, 153, 91, 89, 90, 91, 90, 113, 145, 147, 139, 189,
                150, 153, 91};
            renderer_.blitKeyed(pk2Image(projectilePictures[selection_[player] % 21]),
                                static_cast<int>(projectileX_[player]),
                                static_cast<int>(projectileY_[player]));
        }
    }
    const int leftX = first ? 13 : 25;
    const int rightX = renderer_.canvasWidth() - (first ? 18 : 35);
    if (first) {
        renderer_.blitKeyed(pk1Image("sprites/paddles/000" + std::to_string(selection_[0] % 8) + ".png"),
                            leftX, static_cast<int>(paddleY_[0]));
        renderer_.blitKeyed(pk1Image("sprites/paddles/000" + std::to_string(selection_[1] % 8) + ".png"),
                            rightX, static_cast<int>(paddleY_[1]));
        renderer_.blitKeyed(pk1Image("sprites/balls/0000.png"), static_cast<int>(ballX_) - 5,
                            static_cast<int>(ballY_) - 5);
    } else {
        static constexpr int paddlePictures[] = {
            144, 142, 174, 164, 180, 188, 215, 155, 52, 77, 174, 213, 144, 124, 164, 139, 185, 215,
            203, 155, 180};
        renderer_.blitKeyed(pk2Image(paddlePictures[selection_[0] % 21]), leftX,
                            static_cast<int>(paddleY_[0]));
        renderer_.blitKeyed(pk2Image(paddlePictures[selection_[1] % 21]), rightX,
                            static_cast<int>(paddleY_[1]));
        const int ballFrame = 2 + (static_cast<int>(screenTime_ * 18.0) % 50);
        renderer_.blitKeyed(pk2Image(ballFrame), static_cast<int>(ballX_) - 14,
                            static_cast<int>(ballY_) - 14);
    }
    renderer_.fillRect(0, 0, renderer_.canvasWidth(), first ? 17 : 58, RGB(0, 0, 0));
    if (first) {
        renderer_.text(std::to_string(score_[0]), area(3, 0, 75, 17), 9, RGB(255, 255, 255));
        renderer_.text(std::to_string(score_[1]), area(245, 0, 317, 17), 9, RGB(255, 255, 255));
    } else {
        renderer_.fillRect(0, 15, health_[0] * 265 / 100, 17, RGB(15, 180, 235));
        renderer_.fillRect(640 - health_[1] * 265 / 100, 15, health_[1] * 265 / 100, 17,
                           RGB(15, 180, 235));
        renderer_.text(std::to_string(static_cast<int>(std::ceil(roundTime_))), area(275, 0, 365, 55), 24,
                       RGB(255, 205, 0));
        renderer_.text(std::to_string(score_[0]), area(145, 30, 190, 57), 13, RGB(180, 180, 180));
        renderer_.text(std::to_string(score_[1]), area(450, 30, 495, 57), 13, RGB(180, 180, 180));
        if (roundIntroTime_ > 0.0)
            renderer_.text("Bounce!", area(150, 130, 490, 230), 26, RGB(255, 255, 40));
    }
    if (paused_) {
        renderer_.fillRect(renderer_.canvasWidth() / 2 - 80, renderer_.canvasHeight() / 2 - 25, 160, 50,
                           RGB(0, 0, 0));
        renderer_.text("PAUSED", area(renderer_.canvasWidth() / 2 - 80, renderer_.canvasHeight() / 2 - 25,
                       renderer_.canvasWidth() / 2 + 80, renderer_.canvasHeight() / 2 + 25), first ? 14 : 24,
                       RGB(255, 255, 0));
    }
}

void LegacyGame::renderFinishOverlay() {
    const bool first = edition_ == Edition::PongKombat;
    const int w = renderer_.canvasWidth();
    if (!finisherPerformed_) {
        if (first) {
            const Image& finish = pk1Image("sprites/finish/0000.png");
            renderer_.blitKeyed(finish, (w - finish.width) / 2, 42);
        } else {
            const Image& dismantle = pk2Image(1);
            renderer_.blitKeyed(dismantle, (w - dismantle.width) / 2, 80);
        }
        if (flawlessWin_)
            renderer_.text("FLAWLESS VICTORY", area(30, first ? 146 : 330, w - 30, first ? 178 : 385),
                           first ? 11 : 20, RGB(255, 255, 0));
        return;
    }
    const int boxY = first ? 65 : 155;
    const int boxH = first ? 72 : 145;
    renderer_.fillRect(first ? 24 : 90, boxY, first ? 272 : 460, boxH, RGB(0, 0, 0));
    renderer_.strokeRect(first ? 24 : 90, boxY, first ? 272 : 460, boxH, RGB(180, 0, 0), first ? 1 : 3);
    renderer_.text(finisherLabel_ ? finisherLabel_ : (first ? "FATALITY" : "DISMANTLE"),
                   area(first ? 30 : 105, boxY + 8, first ? 290 : 535, boxY + boxH - 8),
                   first ? 12 : 24, RGB(255, 35, 20));
}

void LegacyGame::renderCheats() {
    const int w = renderer_.canvasWidth();
    const int h = renderer_.canvasHeight();
    const int boxW = std::min(400, w - 30);
    const int boxH = std::min(260, h - 24);
    const int x = (w - boxW) / 2;
    const int y = (h - boxH) / 2;
    renderer_.fillRect(x, y, boxW, boxH, RGB(10, 10, 16));
    renderer_.strokeRect(x, y, boxW, boxH, RGB(210, 20, 20), 3);
    renderer_.text("CHEAT MENU", area(x + 10, y + 8, x + boxW - 10, y + 48), 18, RGB(255, 60, 40));
    const char* labels[] = {"UNLOCK SECRET PADDLES", "INFINITE P1", "FREEZE CPU", "TURBO BALL", "WIN MATCH"};
    const bool states[] = {unlockSecrets_, infiniteP1_, freezeCpu_, turboBall_, false};
    const int rowHeight = w == 320 ? 25 : 38;
    const int firstRow = w == 320 ? 40 : 55;
    for (int i = 0; i < 5; ++i) {
        const COLORREF color = i == cheatChoice_ ? RGB(255, 255, 0) : RGB(220, 220, 220);
        std::string value = labels[i];
        if (i < 4) value += states[i] ? "  ON" : "  OFF";
        renderer_.text(value, area(x + 12, y + firstRow + i * rowHeight,
                       x + boxW - 12, y + firstRow + (i + 1) * rowHeight),
                       w == 320 ? 9 : 15, color);
    }
}

} // namespace pk3
