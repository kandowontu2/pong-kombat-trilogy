#include "game.hpp"

#include "resource_ids.hpp"

#include <algorithm>
#include <array>
#include <bit>
#include <cmath>
#include <cstdio>
#include <cstring>
#include <sstream>

namespace pk3 {
namespace {

constexpr float kPaddleWidth = 16.0f;
constexpr float kPaddleHeight = 48.0f;
constexpr float kOriginalTickRate = 30.0f;
constexpr float kPaddleSpeed = 6.0f * kOriginalTickRate;
constexpr float kBallSpeed = 6.0f * kOriginalTickRate;
constexpr int kLadder[] = {1, 2, 3, 4, 5, 6, 7, 8, 13, 9, 10};

constexpr COLORREF kYellow = RGB(255, 230, 0);
constexpr COLORREF kRed = RGB(235, 20, 20);
constexpr COLORREF kGreen = RGB(30, 255, 40);

constexpr std::uint32_t kPadStickLeft = 1u << 16u;
constexpr std::uint32_t kPadStickRight = 1u << 17u;
constexpr std::uint32_t kPadStickUp = 1u << 18u;
constexpr std::uint32_t kPadStickDown = 1u << 19u;
constexpr std::uint32_t kPadLeftTrigger = 1u << 20u;
constexpr std::uint32_t kPadRightTrigger = 1u << 21u;
constexpr SHORT kStickDeadZone = 16'000;

RECT makeRect(int left, int top, int right, int bottom) {
    return RECT{left, top, right, bottom};
}

std::string codeString(const std::array<int, 6>& digits) {
    std::string result;
    result.reserve(6);
    for (int digit : digits) result.push_back(static_cast<char>('0' + digit));
    return result;
}

} // namespace

Game::Game(Renderer& renderer, AudioEngine& audio, bool loadSavedControllerSettings, bool trilogyMode)
    : renderer_(renderer), audio_(audio), loadSavedControllerSettings_(loadSavedControllerSettings),
      trilogyMode_(trilogyMode) {}

Game::~Game() {
    shutdownXInput();
}

void Game::initialize() {
    renderer_.setCanvasSize(kCanvasWidth, kCanvasHeight);
    returnRequested_ = false;
    keys_.fill(false);
    pressed_.fill(false);
    setDefaultControllerSettings();
    if (loadSavedControllerSettings_) loadControllerSettings();
    initializeXInput();
    changeScreen(Screen::Intro);
}

void Game::openControllerSettings(bool returnToCollection) {
    settingsReturnToCollection_ = returnToCollection;
    changeScreen(Screen::ControllerSettings);
}

void Game::closeControllerSettings() {
    saveControllerSettings();
    if (settingsReturnToCollection_) {
        settingsReturnToCollection_ = false;
        returnRequested_ = true;
    } else {
        changeScreen(Screen::Title);
    }
}

bool Game::runReturnLifecycleSelfTest() {
    if (!trilogyMode_) return false;
    changeScreen(Screen::GameOver);
    screenTimer_ = 8.0;
    update(0.0);
    return returnRequested_;
}

void Game::setDefaultControllerSettings() {
    constexpr std::array<int, 7> p1Keys{'A', 'D', 'W', 'S', '1', '2', VK_RETURN};
    constexpr std::array<int, 7> p2Keys{VK_LEFT, VK_RIGHT, VK_UP, VK_DOWN,
                                         VK_NUMPAD1, VK_NUMPAD2, VK_NUMPAD0};
    constexpr std::array<std::uint32_t, 7> padInputs{
        kPadStickLeft | XINPUT_GAMEPAD_DPAD_LEFT,
        kPadStickRight | XINPUT_GAMEPAD_DPAD_RIGHT,
        kPadStickUp | XINPUT_GAMEPAD_DPAD_UP,
        kPadStickDown | XINPUT_GAMEPAD_DPAD_DOWN,
        XINPUT_GAMEPAD_A, XINPUT_GAMEPAD_B, XINPUT_GAMEPAD_START,
    };
    for (std::size_t action = 0; action < padInputs.size(); ++action) {
        bindings_[0][action] = {p1Keys[action], padInputs[action]};
        bindings_[1][action] = {p2Keys[action], padInputs[action]};
    }
    controllerSlots_ = {0, 1};
}

void Game::loadControllerSettings() {
    struct StoredSettings {
        DWORD version;
        std::int32_t slots[2];
        std::int32_t keys[14];
        std::uint32_t padInputs[14];
    } stored{};
    DWORD size = sizeof(stored);
    const LSTATUS status = RegGetValueW(HKEY_CURRENT_USER, L"Software\\PongKombat3Native",
                                        L"ControllerSettingsV1", RRF_RT_REG_BINARY,
                                        nullptr, &stored, &size);
    if (status != ERROR_SUCCESS || size != sizeof(stored) || stored.version != 1) return;
    for (int player = 0; player < 2; ++player) {
        controllerSlots_[player] = std::clamp<int>(stored.slots[player], -1, 3);
        for (std::size_t action = 0; action < static_cast<std::size_t>(ControlAction::Count); ++action) {
            const std::size_t index = static_cast<std::size_t>(player) * 7 + action;
            if (stored.keys[index] >= 0 && stored.keys[index] < 256)
                bindings_[player][action].keyboardKey = stored.keys[index];
            if (stored.padInputs[index]) bindings_[player][action].gamepadInput = stored.padInputs[index];
        }
    }
}

void Game::saveControllerSettings() const {
    if (!loadSavedControllerSettings_) return;
    struct StoredSettings {
        DWORD version;
        std::int32_t slots[2];
        std::int32_t keys[14];
        std::uint32_t padInputs[14];
    } stored{};
    stored.version = 1;
    for (int player = 0; player < 2; ++player) {
        stored.slots[player] = controllerSlots_[player];
        for (std::size_t action = 0; action < static_cast<std::size_t>(ControlAction::Count); ++action) {
            const std::size_t index = static_cast<std::size_t>(player) * 7 + action;
            stored.keys[index] = bindings_[player][action].keyboardKey;
            stored.padInputs[index] = bindings_[player][action].gamepadInput;
        }
    }
    RegSetKeyValueW(HKEY_CURRENT_USER, L"Software\\PongKombat3Native",
                    L"ControllerSettingsV1", REG_BINARY, &stored, sizeof(stored));
}

void Game::initializeXInput() {
    static constexpr const wchar_t* libraries[] = {
        L"xinput1_4.dll", L"xinput9_1_0.dll", L"xinput1_3.dll",
    };
    for (const wchar_t* library : libraries) {
        xinputModule_ = LoadLibraryW(library);
        if (!xinputModule_) continue;
        FARPROC procedure = GetProcAddress(xinputModule_, "XInputGetState");
        static_assert(sizeof(procedure) == sizeof(xinputGetState_));
        std::memcpy(&xinputGetState_, &procedure, sizeof(procedure));
        if (xinputGetState_) return;
        FreeLibrary(xinputModule_);
        xinputModule_ = nullptr;
    }
}

void Game::shutdownXInput() {
    xinputGetState_ = nullptr;
    if (xinputModule_) {
        FreeLibrary(xinputModule_);
        xinputModule_ = nullptr;
    }
}

void Game::pollControllers() {
    previousControllerMasks_ = controllerMasks_;
    controllerMasks_.fill(0);
    controllerConnected_.fill(false);
    if (!xinputGetState_) return;

    for (DWORD index = 0; index < 4; ++index) {
        XINPUT_STATE state{};
        if (xinputGetState_(index, &state) != ERROR_SUCCESS) continue;
        controllerConnected_[index] = true;
        std::uint32_t mask = state.Gamepad.wButtons;
        if (state.Gamepad.sThumbLX < -kStickDeadZone) mask |= kPadStickLeft;
        if (state.Gamepad.sThumbLX > kStickDeadZone) mask |= kPadStickRight;
        if (state.Gamepad.sThumbLY > kStickDeadZone) mask |= kPadStickUp;
        if (state.Gamepad.sThumbLY < -kStickDeadZone) mask |= kPadStickDown;
        if (state.Gamepad.bLeftTrigger > XINPUT_GAMEPAD_TRIGGER_THRESHOLD) mask |= kPadLeftTrigger;
        if (state.Gamepad.bRightTrigger > XINPUT_GAMEPAD_TRIGGER_THRESHOLD) mask |= kPadRightTrigger;
        controllerMasks_[index] = mask;

        std::uint32_t newlyPressed = mask & ~previousControllerMasks_[index];
        if (!newlyPressed) continue;
        if (screen_ == Screen::ControllerSettings && settingsCapturing_) {
            const unsigned bit = std::countr_zero(newlyPressed);
            bindings_[settingsPlayer_][static_cast<std::size_t>(settingsCaptureAction_)].gamepadInput = 1u << bit;
            controllerSlots_[settingsPlayer_] = static_cast<int>(index);
            settingsCapturing_ = false;
            saveControllerSettings();
            audio_.play(10001);
            continue;
        }
        for (int player = 0; player < 2; ++player) {
            if (controllerSlots_[player] != static_cast<int>(index)) continue;
            for (std::size_t action = 0; action < static_cast<std::size_t>(ControlAction::Count); ++action) {
                if (newlyPressed & bindings_[player][action].gamepadInput)
                    handleControllerAction(player, static_cast<ControlAction>(action));
            }
        }
    }
}

bool Game::actionHeld(int player, ControlAction action) const {
    if (player < 0 || player > 1) return false;
    const Binding& binding = bindings_[player][static_cast<std::size_t>(action)];
    const bool keyboardHeld = binding.keyboardKey > 0 && binding.keyboardKey < 256 && key(binding.keyboardKey);
    const int slot = controllerSlots_[player];
    const bool controllerHeld = slot >= 0 && slot < 4 && controllerConnected_[slot] &&
                                (controllerMasks_[slot] & binding.gamepadInput) != 0;
    return keyboardHeld || controllerHeld;
}

int Game::actionForKeyboardKey(int player, int virtualKey) const {
    if (player < 0 || player > 1) return -1;
    for (std::size_t action = 0; action < static_cast<std::size_t>(ControlAction::Count); ++action) {
        if (bindings_[player][action].keyboardKey == virtualKey) return static_cast<int>(action);
    }
    return -1;
}

std::string Game::keyboardKeyName(int virtualKey) {
    switch (virtualKey) {
    case 0: return "NONE";
    case VK_LEFT: return "LEFT ARROW";
    case VK_RIGHT: return "RIGHT ARROW";
    case VK_UP: return "UP ARROW";
    case VK_DOWN: return "DOWN ARROW";
    case VK_RETURN: return "ENTER";
    case VK_SPACE: return "SPACE";
    case VK_TAB: return "TAB";
    case VK_ESCAPE: return "ESC";
    case VK_NUMPAD0: return "NUMPAD 0";
    case VK_NUMPAD1: return "NUMPAD 1";
    case VK_NUMPAD2: return "NUMPAD 2";
    case VK_NUMPAD3: return "NUMPAD 3";
    case VK_LSHIFT: return "LEFT SHIFT";
    case VK_RSHIFT: return "RIGHT SHIFT";
    case VK_LCONTROL: return "LEFT CTRL";
    case VK_RCONTROL: return "RIGHT CTRL";
    }
    UINT scan = MapVirtualKeyW(static_cast<UINT>(virtualKey), MAPVK_VK_TO_VSC) << 16u;
    if (virtualKey == VK_INSERT || virtualKey == VK_DELETE || virtualKey == VK_HOME ||
        virtualKey == VK_END || virtualKey == VK_PRIOR || virtualKey == VK_NEXT)
        scan |= 1u << 24u;
    wchar_t name[64]{};
    if (GetKeyNameTextW(static_cast<LONG>(scan), name, static_cast<int>(std::size(name)))) {
        int size = WideCharToMultiByte(CP_UTF8, 0, name, -1, nullptr, 0, nullptr, nullptr);
        std::string result(static_cast<std::size_t>(std::max(0, size)), '\0');
        if (size > 1) {
            WideCharToMultiByte(CP_UTF8, 0, name, -1, result.data(), size, nullptr, nullptr);
            result.pop_back();
        }
        return result;
    }
    return "VK " + std::to_string(virtualKey);
}

std::string Game::gamepadInputName(std::uint32_t input) {
    if (input == (kPadStickLeft | XINPUT_GAMEPAD_DPAD_LEFT)) return "LEFT STICK / D-PAD LEFT";
    if (input == (kPadStickRight | XINPUT_GAMEPAD_DPAD_RIGHT)) return "LEFT STICK / D-PAD RIGHT";
    if (input == (kPadStickUp | XINPUT_GAMEPAD_DPAD_UP)) return "LEFT STICK / D-PAD UP";
    if (input == (kPadStickDown | XINPUT_GAMEPAD_DPAD_DOWN)) return "LEFT STICK / D-PAD DOWN";
    switch (input) {
    case XINPUT_GAMEPAD_DPAD_UP: return "D-PAD UP";
    case XINPUT_GAMEPAD_DPAD_DOWN: return "D-PAD DOWN";
    case XINPUT_GAMEPAD_DPAD_LEFT: return "D-PAD LEFT";
    case XINPUT_GAMEPAD_DPAD_RIGHT: return "D-PAD RIGHT";
    case XINPUT_GAMEPAD_START: return "MENU / START";
    case XINPUT_GAMEPAD_BACK: return "VIEW / BACK";
    case XINPUT_GAMEPAD_LEFT_THUMB: return "LEFT STICK CLICK";
    case XINPUT_GAMEPAD_RIGHT_THUMB: return "RIGHT STICK CLICK";
    case XINPUT_GAMEPAD_LEFT_SHOULDER: return "LEFT BUMPER";
    case XINPUT_GAMEPAD_RIGHT_SHOULDER: return "RIGHT BUMPER";
    case XINPUT_GAMEPAD_A: return "A";
    case XINPUT_GAMEPAD_B: return "B";
    case XINPUT_GAMEPAD_X: return "X";
    case XINPUT_GAMEPAD_Y: return "Y";
    case kPadStickLeft: return "LEFT STICK LEFT";
    case kPadStickRight: return "LEFT STICK RIGHT";
    case kPadStickUp: return "LEFT STICK UP";
    case kPadStickDown: return "LEFT STICK DOWN";
    case kPadLeftTrigger: return "LEFT TRIGGER";
    case kPadRightTrigger: return "RIGHT TRIGGER";
    default: return "UNASSIGNED";
    }
}

std::string Game::controlActionName(ControlAction action) {
    switch (action) {
    case ControlAction::Left: return "LEFT";
    case ControlAction::Right: return "RIGHT";
    case ControlAction::Up: return "UP";
    case ControlAction::Down: return "DOWN";
    case ControlAction::Punch: return "PUNCH";
    case ControlAction::Kick: return "KICK";
    case ControlAction::Start: return "START";
    case ControlAction::Count: break;
    }
    return "?";
}

void Game::changeScreen(Screen screen) {
    screen_ = screen;
    screenTimer_ = 0;
    switch (screen_) {
    case Screen::Intro:
        audio_.playMusic(8000);
        break;
    case Screen::Title:
        audio_.playMusic(8000);
        break;
    case Screen::ControllerSettings:
        audio_.playMusic(8001);
        settingsRow_ = 0;
        settingsCapturing_ = false;
        break;
    case Screen::Selection:
        audio_.playMusic(8001);
        break;
    case Screen::Versus:
        audio_.stopMusic();
        audio_.play(twoPlayer_ ? 8002 : 8003);
        break;
    case Screen::Match:
        audio_.playMusic(8006);
        break;
    case Screen::Continue:
        audio_.stopMusic();
        break;
    case Screen::GameOver:
        audio_.playMusic(8005);
        break;
    case Screen::Ending:
        audio_.playMusic(8007);
        break;
    case Screen::Credits:
        audio_.playMusic(8007);
        break;
    }
}

void Game::update(double dt) {
    clock_ += dt;
    screenTimer_ += dt;
    if (titleMessageTimer_ > 0) titleMessageTimer_ -= dt;
    if (moveBannerTimer_ > 0) moveBannerTimer_ -= dt;
    audio_.update();
    pollControllers();

    if (!cheatOpen_) {
        switch (screen_) {
        case Screen::Intro:
            if (screenTimer_ > 6.5 || pressed(VK_RETURN) || pressed(VK_SPACE)) changeScreen(Screen::Title);
            break;
        case Screen::Title:
            if (pressed(VK_UP) || pressed('W')) titleChoice_ = (titleChoice_ + 2) % 3;
            if (pressed(VK_DOWN) || pressed('S')) titleChoice_ = (titleChoice_ + 1) % 3;
            if (pressed(VK_RETURN) || pressed(VK_SPACE)) {
                if (titleChoice_ == 2) changeScreen(Screen::ControllerSettings);
                else startSelection(titleChoice_ == 1);
            }
            break;
        case Screen::ControllerSettings:
            break;
        case Screen::Selection:
            if (selectionConfirmed_[0] && (twoPlayer_ ? selectionConfirmed_[1] : true)) beginVersus();
            break;
        case Screen::Versus:
            if (screenTimer_ >= 5.0 || pressed(VK_RETURN) || pressed(VK_SPACE)) {
                applyKombatKode();
                startMatch();
            }
            break;
        case Screen::Match:
            updateMatch(dt);
            break;
        case Screen::Continue:
            if (pressed(VK_RETURN) || pressed(VK_SPACE)) {
                if (credits_ > 0) {
                    --credits_;
                    beginVersus();
                } else {
                    changeScreen(Screen::GameOver);
                }
            } else if (screenTimer_ > 10.0) {
                changeScreen(Screen::GameOver);
            }
            break;
        case Screen::GameOver:
            if (screenTimer_ > 7.0 || pressed(VK_RETURN) || pressed(VK_SPACE)) {
                if (trilogyMode_) returnRequested_ = true;
                else changeScreen(Screen::Title);
            }
            break;
        case Screen::Ending:
            if (screenTimer_ > 14.0 || pressed(VK_RETURN) || pressed(VK_SPACE)) changeScreen(Screen::Credits);
            break;
        case Screen::Credits:
            if (screenTimer_ > 18.0 || pressed(VK_RETURN) || pressed(VK_SPACE) || pressed(VK_ESCAPE)) {
                if (trilogyMode_) returnRequested_ = true;
                else changeScreen(Screen::Title);
            }
            break;
        }
    }

    pressed_.fill(false);
}

bool Game::key(int virtualKey) const {
    return virtualKey >= 0 && virtualKey < static_cast<int>(keys_.size()) && keys_[virtualKey];
}

bool Game::pressed(int virtualKey) const {
    return virtualKey >= 0 && virtualKey < static_cast<int>(pressed_.size()) && pressed_[virtualKey];
}

void Game::onKeyDown(int virtualKey, bool repeat) {
    if (virtualKey < 0 || virtualKey >= static_cast<int>(keys_.size())) return;
    keys_[virtualKey] = true;
    if (!repeat) pressed_[virtualKey] = true;

    if (cheatOpen_) {
        if (!repeat) handleCheatKey(virtualKey);
        return;
    }
    if (repeat) return;

    if (screen_ == Screen::ControllerSettings) {
        if (settingsCapturing_) {
            if (virtualKey == VK_ESCAPE) {
                settingsCapturing_ = false;
            } else {
                bindings_[settingsPlayer_][static_cast<std::size_t>(settingsCaptureAction_)].keyboardKey = virtualKey;
                settingsCapturing_ = false;
                saveControllerSettings();
                audio_.play(10001);
            }
            return;
        }
        if (virtualKey == VK_ESCAPE) {
            closeControllerSettings();
        } else if (virtualKey == VK_TAB) {
            settingsPlayer_ = 1 - settingsPlayer_;
        } else if (virtualKey == VK_UP || virtualKey == 'W') {
            handleSettingsAction(ControlAction::Up);
        } else if (virtualKey == VK_DOWN || virtualKey == 'S') {
            handleSettingsAction(ControlAction::Down);
        } else if (virtualKey == VK_LEFT || virtualKey == 'A') {
            handleSettingsAction(ControlAction::Left);
        } else if (virtualKey == VK_RIGHT || virtualKey == 'D') {
            handleSettingsAction(ControlAction::Right);
        } else if (virtualKey == VK_RETURN || virtualKey == VK_SPACE) {
            handleSettingsAction(ControlAction::Start);
        } else if (virtualKey == 'R') {
            setDefaultControllerSettings();
            saveControllerSettings();
            audio_.play(10001);
        }
        return;
    }

    if (screen_ == Screen::Match && virtualKey == VK_ESCAPE) {
        paused_ = !paused_;
        return;
    }

    if (screen_ == Screen::Title && virtualKey >= 'A' && virtualKey <= 'Z') {
        titleTyped_.push_back(static_cast<char>(virtualKey));
        if (titleTyped_.size() > 16) titleTyped_.erase(0, titleTyped_.size() - 16);
        if (titleTyped_.ends_with("IMLAME")) {
            credits_ = 9;
            titleMessage_ = "EXTRA KREDITS";
            titleMessageTimer_ = 3;
            audio_.play(10001);
        } else if (titleTyped_.ends_with("NULL")) {
            titleMessage_ = "DE-REGISTERED";
            titleMessageTimer_ = 3;
        } else if (titleTyped_.ends_with("WHO")) {
            changeScreen(Screen::Credits);
        }
    }

    if (screen_ == Screen::Selection) {
        if (virtualKey == VK_TAB && !twoPlayer_) {
            twoPlayer_ = true;
            selectionConfirmed_[1] = false;
        }
        for (int player = 0; player < (twoPlayer_ ? 2 : 1); ++player) {
            const int action = actionForKeyboardKey(player, virtualKey);
            if (action >= 0) handleControllerAction(player, static_cast<ControlAction>(action));
        }
        return;
    }

    if (screen_ == Screen::Versus) {
        int index = -1;
        if (virtualKey >= '1' && virtualKey <= '3') index = virtualKey - '1';
        if (virtualKey >= VK_NUMPAD1 && virtualKey <= VK_NUMPAD3) index = 3 + virtualKey - VK_NUMPAD1;
        if (index >= 0) {
            kodeDigits_[index] = (kodeDigits_[index] + 1) % 10;
            audio_.play(500);
        }
        for (int player = 0; player < (twoPlayer_ ? 2 : 1); ++player) {
            const int action = actionForKeyboardKey(player, virtualKey);
            if (action == static_cast<int>(ControlAction::Start))
                handleControllerAction(player, ControlAction::Start);
        }
        return;
    }

    if (screen_ == Screen::Match && (matchPhase_ == MatchPhase::Active || matchPhase_ == MatchPhase::Finish)) {
        for (int player = 0; player < (twoPlayer_ ? 2 : 1); ++player) {
            const int action = actionForKeyboardKey(player, virtualKey);
            if (action >= 0) handleControllerAction(player, static_cast<ControlAction>(action));
        }
    }
}

void Game::onKeyUp(int virtualKey) {
    if (virtualKey >= 0 && virtualKey < static_cast<int>(keys_.size())) keys_[virtualKey] = false;
}

void Game::handleControllerAction(int player, ControlAction action) {
    if (cheatOpen_) {
        if (action == ControlAction::Up) cheatSelection_ = (cheatSelection_ + 11) % 12;
        else if (action == ControlAction::Down) cheatSelection_ = (cheatSelection_ + 1) % 12;
        else if (action == ControlAction::Left) activateCheatItem(-1);
        else if (action == ControlAction::Right || action == ControlAction::Punch || action == ControlAction::Start) activateCheatItem(1);
        else if (action == ControlAction::Kick) cheatOpen_ = false;
        return;
    }
    if (screen_ == Screen::Intro) {
        if (action == ControlAction::Punch || action == ControlAction::Start) changeScreen(Screen::Title);
        return;
    }
    if (screen_ == Screen::Title) {
        if (action == ControlAction::Up) titleChoice_ = (titleChoice_ + 2) % 3;
        else if (action == ControlAction::Down) titleChoice_ = (titleChoice_ + 1) % 3;
        else if (action == ControlAction::Punch || action == ControlAction::Start) {
            if (titleChoice_ == 2) changeScreen(Screen::ControllerSettings);
            else startSelection(titleChoice_ == 1);
        }
        return;
    }
    if (screen_ == Screen::ControllerSettings) {
        handleSettingsAction(action);
        return;
    }
    if (screen_ == Screen::Selection) {
        if (player == 1 && !twoPlayer_) return;
        if (selectionConfirmed_[player]) return;
        auto unlockedStep = [](int id, int delta) {
            do { id = (id + delta + 16) % 16; } while (id == 12);
            return id;
        };
        Token token{};
        bool addsToken = true;
        switch (action) {
        case ControlAction::Left:
            token = player == 0 ? Token::Back : Token::Forward;
            selection_[player] = cheats_.unlockAll ? unlockedStep(selection_[player], -1)
                : ((selection_[player] % 3 == 0) ? selection_[player] + 2 : selection_[player] - 1);
            break;
        case ControlAction::Right:
            token = player == 0 ? Token::Forward : Token::Back;
            selection_[player] = cheats_.unlockAll ? unlockedStep(selection_[player], 1)
                : ((selection_[player] % 3 == 2) ? selection_[player] - 2 : selection_[player] + 1);
            break;
        case ControlAction::Up:
            token = Token::Up;
            selection_[player] = cheats_.unlockAll ? unlockedStep(selection_[player], -4)
                                                    : (selection_[player] + 6) % 9;
            break;
        case ControlAction::Down:
            token = Token::Down;
            selection_[player] = cheats_.unlockAll ? unlockedStep(selection_[player], 4)
                                                    : (selection_[player] + 3) % 9;
            break;
        case ControlAction::Punch: token = Token::Punch; break;
        case ControlAction::Kick: token = Token::Kick; break;
        case ControlAction::Start:
            addsToken = false;
            confirmSelection(player);
            break;
        case ControlAction::Count: addsToken = false; break;
        }
        if (addsToken) {
            pushToken(player, token);
            const bool hidden = checkHiddenSelection(player);
            if (!hidden && (token == Token::Punch || token == Token::Kick)) confirmSelection(player);
        }
        return;
    }
    if (screen_ == Screen::Versus) {
        if (action == ControlAction::Start) {
            applyKombatKode();
            startMatch();
        }
        return;
    }
    if (screen_ == Screen::Match) {
        if (action == ControlAction::Start) {
            paused_ = !paused_;
            return;
        }
        if (paused_ || (matchPhase_ != MatchPhase::Active && matchPhase_ != MatchPhase::Finish)) return;
        Token token{};
        switch (action) {
        case ControlAction::Left: token = player == 0 ? Token::Back : Token::Forward; break;
        case ControlAction::Right: token = player == 0 ? Token::Forward : Token::Back; break;
        case ControlAction::Up: token = Token::Up; break;
        case ControlAction::Down: token = Token::Down; break;
        case ControlAction::Punch: token = Token::Punch; break;
        case ControlAction::Kick: token = Token::Kick; break;
        case ControlAction::Start:
        case ControlAction::Count: return;
        }
        pushToken(player, token);
        checkMove(player);
        return;
    }
    if (action != ControlAction::Punch && action != ControlAction::Start) return;
    if (screen_ == Screen::Continue) {
        if (credits_ > 0) { --credits_; beginVersus(); }
        else changeScreen(Screen::GameOver);
    } else if (screen_ == Screen::GameOver || screen_ == Screen::Credits) {
        if (trilogyMode_) returnRequested_ = true;
        else changeScreen(Screen::Title);
    } else if (screen_ == Screen::Ending) {
        changeScreen(Screen::Credits);
    }
}

void Game::handleSettingsAction(ControlAction action) {
    if (settingsCapturing_) {
        if (action == ControlAction::Kick) settingsCapturing_ = false;
        return;
    }
    if (action == ControlAction::Up) {
        settingsRow_ = (settingsRow_ + 9) % 10;
    } else if (action == ControlAction::Down) {
        settingsRow_ = (settingsRow_ + 1) % 10;
    } else if (action == ControlAction::Left || action == ControlAction::Right) {
        if (settingsRow_ == 0) {
            const int direction = action == ControlAction::Left ? -1 : 1;
            controllerSlots_[settingsPlayer_] = ((controllerSlots_[settingsPlayer_] + 1 + direction + 5) % 5) - 1;
            saveControllerSettings();
        } else {
            settingsPlayer_ = 1 - settingsPlayer_;
        }
    } else if (action == ControlAction::Punch || action == ControlAction::Start) {
        if (settingsRow_ >= 1 && settingsRow_ <= 7) {
            settingsCaptureAction_ = static_cast<ControlAction>(settingsRow_ - 1);
            settingsCapturing_ = true;
        } else if (settingsRow_ == 8) {
            setDefaultControllerSettings();
            saveControllerSettings();
            audio_.play(10001);
        } else if (settingsRow_ == 9) {
            closeControllerSettings();
        }
    } else if (action == ControlAction::Kick) {
        closeControllerSettings();
    }
}

void Game::startSelection(bool twoPlayer) {
    twoPlayer_ = twoPlayer;
    selection_[0] = 0;
    selection_[1] = 2;
    selectionConfirmed_[0] = false;
    selectionConfirmed_[1] = false;
    histories_[0].clear();
    histories_[1].clear();
    ladderIndex_ = 0;
    matchNumber_ = 0;
    changeScreen(Screen::Selection);
}

void Game::confirmSelection(int player) {
    if (player < 0 || player > 1 || selectionConfirmed_[player]) return;
    selectionConfirmed_[player] = true;
    audio_.play(character(selection_[player]).voiceId);
    if (!twoPlayer_ && player == 0) {
        int cpu = kLadder[ladderIndex_ % static_cast<int>(std::size(kLadder))];
        if (cpu == selection_[0]) cpu = (cpu + 1) % 9;
        selection_[1] = cpu;
        selectionConfirmed_[1] = true;
    }
}

bool Game::checkHiddenSelection(int player) {
    const int highlighted = selection_[player];
    struct Secret { int player; int highlight; std::string_view sequence; int characterId; };
    static constexpr Secret secrets[] = {
        {0, 0, "B U B P", 10}, {0, 0, "B U B K", 10},
        {0, 0, "B U U P", 13}, {0, 0, "B U U K", 13},
        {0, 0, "U U B P", 9},  {0, 0, "U U B K", 9},
        {0, 6, "D D D P", 11}, {0, 6, "D D D K", 11},
        {0, 6, "B B B P", 14}, {0, 6, "B B B K", 14},
        {0, 3, "B B B P", 15}, {0, 3, "B B B K", 15},
        {1, 2, "B U B P", 10}, {1, 2, "B U B K", 10},
        {1, 2, "B U U P", 13}, {1, 2, "B U U K", 13},
        {1, 2, "U U B P", 9},  {1, 2, "U U B K", 9},
        {1, 8, "D D D P", 11}, {1, 8, "D D D K", 11},
        {1, 8, "B B B P", 14}, {1, 8, "B B B K", 14},
        {1, 5, "B B B P", 15}, {1, 5, "B B B K", 15},
    };
    for (const Secret& secret : secrets) {
        if (secret.player == player && secret.highlight == highlighted && historyMatches(player, secret.sequence)) {
            selection_[player] = secret.characterId;
            confirmSelection(player);
            return true;
        }
    }
    return false;
}

void Game::beginVersus() {
    kodeDigits_.fill(0);
    modifiers_ = {};
    histories_[0].clear();
    histories_[1].clear();
    changeScreen(Screen::Versus);
}

void Game::applyKombatKode() {
    modifiers_ = {};
    const std::string digits = codeString(kodeDigits_);
    for (const KodeDefinition& kode : kombatKodes()) {
        if (kode.digits != digits) continue;
        modifiers_.kodeName = std::string(kode.name);
        switch (kode.kind) {
        case KodeKind::BallColor: modifiers_.ballColor = RGB((kode.value >> 16) & 255, (kode.value >> 8) & 255, kode.value & 255); break;
        case KodeKind::BallScale: modifiers_.ballScale = kode.value; break;
        case KodeKind::InvisibleBall: modifiers_.invisibleBall = true; break;
        case KodeKind::BallSpeed: modifiers_.ballSpeed = kode.value > 0 ? static_cast<float>(kode.value) : 0.5f; break;
        case KodeKind::CrazyBall: modifiers_.crazyBall = true; break;
        case KodeKind::DecoyBall: modifiers_.decoyBall = true; break;
        case KodeKind::InvisiblePlayers: modifiers_.invisiblePlayers = true; break;
        case KodeKind::ReversedControls: modifiers_.reversedControls = true; break;
        case KodeKind::ProjectilesDisabled: modifiers_.projectilesDisabled = true; break;
        case KodeKind::DamageScale: modifiers_.damageScale = kode.value / 100.0f; break;
        case KodeKind::PlayerEnergy: break;
        case KodeKind::HidePowerBars: modifiers_.hidePowerBars = true; break;
        case KodeKind::Gravity: modifiers_.gravity = kode.value; break;
        case KodeKind::Message: modifiers_.message = std::string(kode.text); break;
        case KodeKind::Stage: modifiers_.stageId = kode.value; break;
        }
        break;
    }
}

void Game::startMatch() {
    paddles_[0].characterId = selection_[0];
    paddles_[1].characterId = selection_[1];
    paddles_[0].displayCharacterId = selection_[0];
    paddles_[1].displayCharacterId = selection_[1];
    paddles_[0].wins = paddles_[1].wins = 0;
    roundNumber_ = 1;
    matchWinner_ = -1;
    paused_ = false;
    projectiles_.clear();
    resetRound(true);
    changeScreen(Screen::Match);
}

void Game::resetRound(bool firstRound) {
    paddles_[0].x = 0;
    paddles_[0].y = 220;
    paddles_[1].x = 500;
    paddles_[1].y = 220;
    paddles_[0].freeze = paddles_[1].freeze = 0;
    paddles_[0].reflect = paddles_[1].reflect = 0;
    paddles_[0].displayCharacterId = paddles_[0].characterId;
    paddles_[1].displayCharacterId = paddles_[1].characterId;
    paddles_[0].energy = paddles_[1].energy = 100;
    const std::string digits = codeString(kodeDigits_);
    if (digits == "033000" || digits == "033033") paddles_[0].energy = 50;
    if (digits == "000033" || digits == "033033") paddles_[1].energy = 50;
    if (digits == "707000" || digits == "707707") paddles_[0].energy = 25;
    if (digits == "000707" || digits == "707707") paddles_[1].energy = 25;
    projectiles_.clear();
    histories_[0].clear();
    histories_[1].clear();
    resetBall(roundNumber_ % 2 ? -1 : 1);
    matchPhase_ = MatchPhase::RoundIntro;
    phaseTimer_ = 0;
    roundBanner_ = "ROUND " + std::to_string(roundNumber_);
    audio_.play(1000);
    audio_.play(roundNumber_ == 1 ? 1001 : (roundNumber_ == 2 ? 1002 : 1003));
}

void Game::resetBall(int direction) {
    if (direction == 0) direction = randomFloat(0, 1) < 0.5f ? -1 : 1;
    ball_.x = kCanvasWidth / 2.0f;
    ball_.y = (kArenaTop + kCanvasHeight) / 2.0f;
    const float speed = kBallSpeed * modifiers_.ballSpeed;
    ball_.vx = speed * static_cast<float>(direction);
    ball_.vy = randomFloat(-0.65f, 0.65f) * speed;
    if (std::abs(ball_.vy) < speed * 0.18f) ball_.vy = speed * 0.25f;
    ball_.radius = modifiers_.ballScale == 4 ? 20 : (modifiers_.ballScale == 2 ? 10 : (modifiers_.ballScale < 0 ? 2 : 5));
    ball_.color = modifiers_.ballColor;
    ball_.visible = !modifiers_.invisibleBall;
}

void Game::updateMatch(double dt) {
    if (paused_) return;
    phaseTimer_ += dt;
    if (matchPhase_ == MatchPhase::RoundIntro) {
        if (phaseTimer_ > 1.4 && roundBanner_.starts_with("ROUND")) {
            roundBanner_ = "FIGHT!";
            audio_.play(1005);
        }
        if (phaseTimer_ > 2.4) {
            matchPhase_ = MatchPhase::Active;
            phaseTimer_ = 0;
            roundBanner_.clear();
        }
        return;
    }
    if (matchPhase_ == MatchPhase::Active) {
        updatePaddles(dt);
        if (!twoPlayer_) updateCpu(dt);
        updateBall(dt);
        updateProjectiles(dt);
        if (cheats_.infiniteP1) paddles_[0].energy = 100;
        if (cheats_.infiniteP2) paddles_[1].energy = 100;
        return;
    }
    if (matchPhase_ == MatchPhase::Finish) {
        updatePaddles(dt);
        if (!twoPlayer_ && finishingPlayer_ == 1) updateCpu(dt);
        if (phaseTimer_ > 6.0) endRound(finishingPlayer_);
        return;
    }
    if (matchPhase_ == MatchPhase::RoundOver) {
        if (phaseTimer_ > 4.0) {
            if (paddles_[0].wins >= 2 || paddles_[1].wins >= 2) finishMatch(paddles_[0].wins >= 2 ? 0 : 1);
            else {
                ++roundNumber_;
                resetRound(false);
            }
        }
        return;
    }
    if (matchPhase_ == MatchPhase::MatchOver && phaseTimer_ > 4.0) {
        if (twoPlayer_) {
            startSelection(true);
        } else if (matchWinner_ == 0) {
            ++ladderIndex_;
            ++matchNumber_;
            if (ladderIndex_ >= static_cast<int>(std::size(kLadder))) {
                changeScreen(Screen::Ending);
            } else {
                selection_[1] = kLadder[ladderIndex_];
                if (selection_[1] == selection_[0]) selection_[1] = (selection_[1] + 1) % 9;
                beginVersus();
            }
        } else {
            changeScreen(Screen::Continue);
        }
    }
}

void Game::updatePaddles(double dt) {
    auto movePaddle = [&](int player) {
        Paddle& paddle = paddles_[player];
        if (paddle.freeze > 0) {
            paddle.freeze = std::max(0.0f, paddle.freeze - static_cast<float>(dt));
            return;
        }
        float dx = (actionHeld(player, ControlAction::Right) ? 1.0f : 0.0f) -
                   (actionHeld(player, ControlAction::Left) ? 1.0f : 0.0f);
        float dy = (actionHeld(player, ControlAction::Down) ? 1.0f : 0.0f) -
                   (actionHeld(player, ControlAction::Up) ? 1.0f : 0.0f);
        if (modifiers_.reversedControls) { dx = -dx; dy = -dy; }
        if (modifiers_.gravity > 0) dy += 0.45f;
        if (modifiers_.gravity < 0) dy -= 0.45f;
        paddle.x += dx * kPaddleSpeed * static_cast<float>(dt);
        paddle.y += dy * kPaddleSpeed * static_cast<float>(dt);
        if (player == 0) paddle.x = std::clamp(paddle.x, 0.0f, 112.0f - kPaddleWidth);
        else paddle.x = std::clamp(paddle.x, 404.0f, 516.0f - kPaddleWidth);
        paddle.y = std::clamp(paddle.y, static_cast<float>(kArenaTop), 432.0f - kPaddleHeight);
        paddle.reflect = std::max(0.0f, paddle.reflect - static_cast<float>(dt));
    };
    movePaddle(0);
    if (twoPlayer_) movePaddle(1);
}

void Game::updateCpu(double dt) {
    if (cheats_.freezeCpu || paddles_[1].freeze > 0) return;
    Paddle& cpu = paddles_[1];
    float targetY = ball_.y - kPaddleHeight * 0.5f;
    if (ball_.vx < 0) targetY = (kArenaTop + kCanvasHeight - kPaddleHeight) * 0.5f;
    const float tolerance = 6.0f + std::max(0, 7 - ladderIndex_) * 1.5f;
    if (cpu.y + tolerance < targetY) cpu.y += kPaddleSpeed * static_cast<float>(dt) * 0.88f;
    if (cpu.y - tolerance > targetY) cpu.y -= kPaddleSpeed * static_cast<float>(dt) * 0.88f;
    cpu.y = std::clamp(cpu.y, static_cast<float>(kArenaTop), 432.0f - kPaddleHeight);

    cpuActionTimer_ -= dt;
    if (cpuActionTimer_ <= 0 && matchPhase_ == MatchPhase::Active && !modifiers_.projectilesDisabled && !cheats_.disableProjectiles) {
        const auto& moves = character(cpu.characterId).moves;
        std::vector<const MoveDefinition*> specials;
        for (const auto& move : moves) {
            if (move.kind != MoveKind::Fatality && move.kind != MoveKind::Babality && move.kind != MoveKind::Morph && move.kind != MoveKind::Reflect)
                specials.push_back(&move);
        }
        if (!specials.empty()) {
            const int index = static_cast<int>(randomFloat(0, static_cast<float>(specials.size()))) % static_cast<int>(specials.size());
            performMove(1, *specials[index]);
        }
        cpuActionTimer_ = randomFloat(1.4f, 3.6f);
    }
}

void Game::updateBall(double dt) {
    const float oldX = ball_.x;
    static constexpr float cheatSpeeds[] = {0.5f, 1.0f, 2.0f, 3.0f};
    const float cheatScale = cheatSpeeds[std::clamp(cheats_.ballSpeedIndex, 0, 3)];
    ball_.x += ball_.vx * static_cast<float>(dt) * cheatScale;
    ball_.y += ball_.vy * static_cast<float>(dt) * cheatScale;
    if (modifiers_.crazyBall) ball_.vy += std::sin(static_cast<float>(clock_ * 9.0)) * 6.0f;
    if (ball_.y - ball_.radius < kArenaTop) {
        ball_.y = static_cast<float>(kArenaTop + ball_.radius);
        ball_.vy = std::abs(ball_.vy);
        audio_.play(500);
    }
    if (ball_.y + ball_.radius > kCanvasHeight) {
        ball_.y = static_cast<float>(kCanvasHeight - ball_.radius);
        ball_.vy = -std::abs(ball_.vy);
        audio_.play(500);
    }

    for (int player = 0; player < 2; ++player) {
        Paddle& paddle = paddles_[player];
        const bool headedToward = player == 0 ? ball_.vx < 0 : ball_.vx > 0;
        if (headedToward && intersects(ball_.x - ball_.radius, ball_.y - ball_.radius,
                                       ball_.radius * 2.0f, ball_.radius * 2.0f,
                                       paddle.x, paddle.y, kPaddleWidth, kPaddleHeight)) {
            ball_.x = player == 0 ? paddle.x + kPaddleWidth + ball_.radius : paddle.x - ball_.radius;
            ball_.vx = player == 0 ? std::abs(ball_.vx) : -std::abs(ball_.vx);
            const float impact = (ball_.y - (paddle.y + kPaddleHeight * 0.5f)) / (kPaddleHeight * 0.5f);
            ball_.vy += impact * 75.0f;
            const float maxVertical = std::abs(ball_.vx) * 1.35f;
            ball_.vy = std::clamp(ball_.vy, -maxVertical, maxVertical);
            audio_.play(500);
        }
    }
    if (ball_.x + ball_.radius < 0) {
        damagePlayer(0, 20, true);
        if (matchPhase_ == MatchPhase::Active) resetBall(-1);
    } else if (ball_.x - ball_.radius > kCanvasWidth) {
        damagePlayer(1, 20, true);
        if (matchPhase_ == MatchPhase::Active) resetBall(1);
    }
    (void)oldX;
}

void Game::updateProjectiles(double dt) {
    for (Projectile& projectile : projectiles_) {
        projectile.age += static_cast<float>(dt);
        const int target = 1 - projectile.owner;
        if (projectile.kind == MoveKind::Homing) {
            const float desired = paddles_[target].y + kPaddleHeight * 0.5f;
            projectile.vy += std::clamp(desired - projectile.y, -80.0f, 80.0f) * static_cast<float>(dt) * 2.2f;
        }
        if (projectile.kind == MoveKind::GrenadeHigh || projectile.kind == MoveKind::GrenadeMid ||
            projectile.kind == MoveKind::GrenadeLow || projectile.kind == MoveKind::Bomb) {
            projectile.vy += 210.0f * static_cast<float>(dt);
        }
        projectile.x += projectile.vx * static_cast<float>(dt);
        projectile.y += projectile.vy * static_cast<float>(dt);
        if (projectile.y < kArenaTop || projectile.y > kCanvasHeight) projectile.vy = -projectile.vy * 0.8f;

        Paddle& victim = paddles_[target];
        if (intersects(projectile.x - 7, projectile.y - 7, 14, 14,
                       victim.x, victim.y, kPaddleWidth, kPaddleHeight)) {
            if (victim.reflect > 0) {
                projectile.owner = target;
                projectile.vx = -projectile.vx;
                projectile.age = 0;
                audio_.play(501);
                continue;
            }
            if (projectile.kind == MoveKind::Freeze || projectile.kind == MoveKind::ShowerFreeze ||
                projectile.kind == MoveKind::Net) {
                victim.freeze = projectile.kind == MoveKind::Net ? 1.4f : 2.0f;
                audio_.play(3500);
            }
            damagePlayer(target, projectile.damage, false);
            projectile.age = projectile.lifetime + 1;
        }
    }
    std::erase_if(projectiles_, [](const Projectile& projectile) {
        return projectile.age > projectile.lifetime || projectile.x < -80 || projectile.x > kCanvasWidth + 80;
    });
}

void Game::damagePlayer(int player, int amount, bool ballDamage) {
    if (matchPhase_ != MatchPhase::Active) return;
    if ((player == 0 && cheats_.infiniteP1) || (player == 1 && cheats_.infiniteP2)) return;
    if (cheats_.oneHit) amount = 100;
    amount = std::max(1, static_cast<int>(std::lround(amount * modifiers_.damageScale)));
    paddles_[player].energy = std::max(0, paddles_[player].energy - amount);
    audio_.play(character(paddles_[player].characterId).hitSoundId);
    if (paddles_[player].energy <= 0) beginFinish(player);
}

void Game::beginFinish(int loser) {
    matchPhase_ = MatchPhase::Finish;
    phaseTimer_ = 0;
    finishingPlayer_ = 1 - loser;
    roundBanner_ = "FINISH " + std::string(finishingPlayer_ == 0 ? "HIM!" : "HIM!");
    projectiles_.clear();
    ball_.vx = ball_.vy = 0;
    paddles_[loser].freeze = 99;
    audio_.play(1006);
}

void Game::endRound(int winner, const std::string& banner) {
    if (matchPhase_ == MatchPhase::RoundOver || matchPhase_ == MatchPhase::MatchOver) return;
    paddles_[winner].wins++;
    matchPhase_ = MatchPhase::RoundOver;
    phaseTimer_ = 0;
    finishingPlayer_ = winner;
    roundBanner_ = banner.empty() ? std::string(character(paddles_[winner].characterId).name) + " WINS" : banner;
    audio_.play(character(paddles_[winner].characterId).voiceId);
    audio_.play(237);
}

void Game::finishMatch(int winner) {
    matchPhase_ = MatchPhase::MatchOver;
    phaseTimer_ = 0;
    matchWinner_ = winner;
    roundBanner_ = std::string(character(paddles_[winner].characterId).name) + " WINS";
    if (paddles_[winner].energy == 100) {
        roundBanner_ += " - FLAWLESS VICTORY";
        audio_.play(1009);
    }
}

void Game::spawnProjectile(int player, const MoveDefinition& move) {
    if (modifiers_.projectilesDisabled || cheats_.disableProjectiles) return;
    Projectile projectile;
    projectile.owner = player;
    projectile.characterId = paddles_[player].displayCharacterId;
    projectile.kind = move.kind;
    projectile.name = move.name;
    projectile.x = player == 0 ? paddles_[player].x + kPaddleWidth + 10 : paddles_[player].x - 10;
    projectile.y = paddles_[player].y + kPaddleHeight * 0.5f;
    float speed = 245.0f;
    if (move.kind == MoveKind::FastProjectile) speed = 360.0f;
    if (move.kind == MoveKind::SlowProjectile) speed = 145.0f;
    projectile.vx = player == 0 ? speed : -speed;
    if (move.kind == MoveKind::DiagonalUp) projectile.vy = -135.0f;
    if (move.kind == MoveKind::DiagonalDown) projectile.vy = 135.0f;
    if (move.kind == MoveKind::GrenadeHigh) projectile.vy = -235.0f;
    if (move.kind == MoveKind::GrenadeMid || move.kind == MoveKind::Bomb) projectile.vy = -165.0f;
    if (move.kind == MoveKind::GrenadeLow) projectile.vy = -80.0f;
    projectile.damage = (move.kind == MoveKind::Bomb || move.kind == MoveKind::GrenadeHigh ||
                         move.kind == MoveKind::GrenadeMid || move.kind == MoveKind::GrenadeLow) ? 12 : 8;
    projectile.color = characterColor(projectile.characterId);
    projectiles_.push_back(std::move(projectile));
}

void Game::performMove(int player, const MoveDefinition& move) {
    if (matchPhase_ == MatchPhase::Finish) {
        if (player != finishingPlayer_ || (move.kind != MoveKind::Fatality && move.kind != MoveKind::Babality)) return;
        moveBanner_ = std::string(move.name);
        moveBannerTimer_ = 5;
        audio_.play(move.soundId);
        if (move.kind == MoveKind::Babality) {
            audio_.play(1010);
            audio_.play(1011);
            endRound(player, std::string(character(paddles_[player].characterId).name) + " - BABALITY");
        } else {
            audio_.play(1008);
            endRound(player, std::string(character(paddles_[player].characterId).name) + " - FATALITY");
        }
        return;
    }
    if (matchPhase_ != MatchPhase::Active || move.kind == MoveKind::Fatality || move.kind == MoveKind::Babality) return;
    moveBanner_ = std::string(move.name);
    moveBannerTimer_ = 1.0;
    audio_.play(move.soundId);
    if (move.kind == MoveKind::Reflect) {
        paddles_[player].reflect = 2.5f;
        return;
    }
    if (move.kind == MoveKind::Morph) {
        const std::string name(move.name);
        for (const CharacterDefinition& candidate : characters()) {
            if (candidate.id != 12 && name.find(std::string(candidate.name)) != std::string::npos) {
                paddles_[player].displayCharacterId = candidate.id;
                return;
            }
        }
        paddles_[player].displayCharacterId = (paddles_[player].displayCharacterId + 1) % 16;
        if (paddles_[player].displayCharacterId == 12) ++paddles_[player].displayCharacterId;
        return;
    }
    spawnProjectile(player, move);
}

void Game::pushToken(int player, Token token) {
    if (player < 0 || player > 1) return;
    histories_[player].push_back({token, clock_});
    trimHistory(player);
}

void Game::trimHistory(int player) {
    auto& history = histories_[player];
    while (!history.empty() && clock_ - history.front().time > 3.0) history.pop_front();
    while (history.size() > 16) history.pop_front();
}

bool Game::historyMatches(int player, std::string_view sequence, double window) const {
    const std::vector<Token> wanted = parseSequence(sequence);
    const auto& history = histories_[player];
    if (wanted.empty() || history.size() < wanted.size()) return false;
    const std::size_t start = history.size() - wanted.size();
    if (history.back().time - history[start].time > window) return false;
    for (std::size_t i = 0; i < wanted.size(); ++i) {
        if (history[start + i].token != wanted[i]) return false;
    }
    return true;
}

bool Game::checkMove(int player) {
    const CharacterDefinition& fighter = character(paddles_[player].displayCharacterId);
    std::vector<const MoveDefinition*> ordered;
    for (const MoveDefinition& move : fighter.moves) ordered.push_back(&move);
    std::sort(ordered.begin(), ordered.end(), [](const MoveDefinition* a, const MoveDefinition* b) {
        return parseSequence(a->sequence).size() > parseSequence(b->sequence).size();
    });
    for (const MoveDefinition* move : ordered) {
        const bool finisher = move->kind == MoveKind::Fatality || move->kind == MoveKind::Babality;
        if ((matchPhase_ == MatchPhase::Finish) != finisher) continue;
        if (historyMatches(player, move->sequence)) {
            performMove(player, *move);
            histories_[player].clear();
            return true;
        }
    }
    return false;
}

float Game::randomFloat(float minimum, float maximum) {
    randomState_ ^= randomState_ << 13u;
    randomState_ ^= randomState_ >> 17u;
    randomState_ ^= randomState_ << 5u;
    const float unit = static_cast<float>(randomState_ & 0x00ffffffu) / static_cast<float>(0x01000000u);
    return minimum + (maximum - minimum) * unit;
}

bool Game::intersects(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {
    return ax < bx + bw && ax + aw > bx && ay < by + bh && ay + ah > by;
}

COLORREF Game::characterColor(int id) {
    const std::uint32_t rgba = character(id).color;
    return RGB((rgba >> 16u) & 255u, (rgba >> 8u) & 255u, rgba & 255u);
}

void Game::render() {
    renderer_.clear();
    switch (screen_) {
    case Screen::Intro: renderIntro(); break;
    case Screen::Title: renderTitle(); break;
    case Screen::ControllerSettings: renderControllerSettings(); break;
    case Screen::Selection: renderSelection(); break;
    case Screen::Versus: renderVersus(); break;
    case Screen::Match: renderMatch(); break;
    case Screen::Continue: renderContinue(); break;
    case Screen::GameOver: renderGameOver(); break;
    case Screen::Ending: renderEnding(); break;
    case Screen::Credits: renderCredits(); break;
    }
    if (cheatOpen_) renderCheatMenu();
}

void Game::renderIntro() {
    if (screenTimer_ < 2.0) {
        renderer_.blit(131, 108, 66);
    } else if (screenTimer_ < 4.0) {
        renderer_.blit(132, 58, 150);
    } else {
        renderer_.blit(133, 92, 178);
        renderer_.blit(134, 124, 260);
    }
    renderer_.text("PRESS ENTER TO SKIP", makeRect(0, 398, 516, 428), 8, RGB(100, 100, 100));
}

void Game::renderTitle() {
    renderer_.blit(129, 155, 22);
    const int y = 288;
    renderer_.text("1 PLAYER", makeRect(120, y, 396, y + 28), 14, titleChoice_ == 0 ? kYellow : RGB(130, 130, 130));
    renderer_.text("2 PLAYER", makeRect(120, y + 32, 396, y + 60), 14, titleChoice_ == 1 ? kYellow : RGB(130, 130, 130));
    renderer_.text("CONTROLLER SETTINGS", makeRect(70, y + 64, 446, y + 92), 12,
                   titleChoice_ == 2 ? kYellow : RGB(130, 130, 130));
    renderer_.text("ARROWS + ENTER", makeRect(0, 386, 516, 405), 8, RGB(170, 170, 170));
    renderer_.text("ALT+ENTER FULLSCREEN", makeRect(0, 407, 516, 428), 7, RGB(100, 100, 100));
    if (titleMessageTimer_ > 0) renderer_.text(titleMessage_, makeRect(0, 270, 516, 300), 11, kGreen);
}

void Game::renderControllerSettings() {
    renderer_.fillRect(0, 0, kCanvasWidth, kCanvasHeight, RGB(5, 5, 9));
    renderer_.strokeRect(9, 8, 498, 414, RGB(115, 15, 15), 2);
    renderer_.text("CONTROLLER SETTINGS", makeRect(0, 14, 516, 46), 18, kRed);

    for (int player = 0; player < 2; ++player) {
        const int x = player == 0 ? 118 : 270;
        if (settingsPlayer_ == player) renderer_.fillRect(x, 48, 128, 25, RGB(85, 12, 12));
        renderer_.strokeRect(x, 48, 128, 25, settingsPlayer_ == player ? kYellow : RGB(70, 70, 70), 1);
        renderer_.text(player == 0 ? "PLAYER 1" : "PLAYER 2", makeRect(x, 49, x + 128, 72), 9,
                       settingsPlayer_ == player ? kYellow : RGB(150, 150, 150));
    }

    auto rowY = [](int row) {
        if (row == 0) return 80;
        if (row <= 7) return 110 + (row - 1) * 29;
        return row == 8 ? 322 : 352;
    };
    auto drawSelection = [&](int row, int height = 24) {
        if (settingsRow_ == row) {
            renderer_.fillRect(20, rowY(row), 476, height, RGB(65, 10, 12));
            renderer_.strokeRect(20, rowY(row), 476, height, RGB(145, 25, 25), 1);
        }
    };

    drawSelection(0, 26);
    const int slot = controllerSlots_[settingsPlayer_];
    std::string controller = "KEYBOARD ONLY";
    if (slot >= 0) {
        controller = "CONTROLLER " + std::to_string(slot + 1) +
                     (controllerConnected_[slot] ? " - CONNECTED" : " - NOT CONNECTED");
    }
    renderer_.text("GAMEPAD", makeRect(32, 81, 135, 105), 9, kYellow,
                   DT_LEFT | DT_VCENTER | DT_SINGLELINE);
    renderer_.text("<  " + controller + "  >", makeRect(140, 81, 486, 105), 8, RGB(225, 225, 225),
                   DT_CENTER | DT_VCENTER | DT_SINGLELINE);

    for (int row = 1; row <= 7; ++row) {
        drawSelection(row);
        const ControlAction action = static_cast<ControlAction>(row - 1);
        const Binding& binding = bindings_[settingsPlayer_][static_cast<std::size_t>(action)];
        const int y = rowY(row);
        renderer_.text(controlActionName(action), makeRect(32, y, 130, y + 24), 8, kYellow,
                       DT_LEFT | DT_VCENTER | DT_SINGLELINE);
        renderer_.text("KEY: " + keyboardKeyName(binding.keyboardKey), makeRect(132, y, 296, y + 24), 7,
                       RGB(225, 225, 225), DT_LEFT | DT_VCENTER | DT_SINGLELINE);
        renderer_.text("PAD: " + gamepadInputName(binding.gamepadInput), makeRect(298, y, 490, y + 24), 6,
                       RGB(180, 210, 255), DT_LEFT | DT_VCENTER | DT_SINGLELINE);
    }

    drawSelection(8, 26);
    renderer_.text("RESTORE DEFAULTS", makeRect(24, 323, 492, 347), 9,
                   settingsRow_ == 8 ? kYellow : RGB(190, 190, 190));
    drawSelection(9, 26);
    renderer_.text("SAVE AND BACK", makeRect(24, 353, 492, 377), 9,
                   settingsRow_ == 9 ? kYellow : RGB(190, 190, 190));
    renderer_.text("TAB: PLAYER   ENTER: CHANGE   R: DEFAULTS   ESC: BACK",
                   makeRect(14, 399, 502, 421), 7, RGB(125, 125, 125));

    if (settingsCapturing_) {
        renderer_.fillRect(56, 142, 404, 132, RGB(4, 4, 7));
        renderer_.strokeRect(56, 142, 404, 132, kRed, 3);
        renderer_.text("CHANGE " + controlActionName(settingsCaptureAction_),
                       makeRect(68, 158, 448, 192), 16, kYellow);
        renderer_.text("PRESS A KEY OR GAMEPAD CONTROL", makeRect(68, 200, 448, 229), 9,
                       RGB(235, 235, 235));
        renderer_.text("ESC CANCELS", makeRect(68, 235, 448, 260), 8, RGB(140, 140, 140));
    }
}

void Game::renderSelection() {
    renderer_.blit(201, 0, 0);
    auto drawCursor = [&](int player, COLORREF color) {
        int index = selection_[player];
        if (index >= 0 && index < 9) {
            const int col = index % 3;
            const int row = index / 3;
            renderer_.strokeRect(137 + col * 80, 66 + row * 100, 80, 100, color, 3);
        } else {
            renderer_.strokeRect(player == 0 ? 92 : 340, 176, 84, 84, color, 3);
            renderer_.text(std::string(character(index).name), makeRect(player == 0 ? 65 : 300, 184, player == 0 ? 205 : 451, 250), 8, color, DT_CENTER | DT_VCENTER | DT_WORDBREAK);
        }
    };
    drawCursor(0, kGreen);
    if (twoPlayer_) drawCursor(1, kRed);
    if (selectionConfirmed_[0]) renderer_.text("P1 READY", makeRect(0, 398, 250, 426), 10, kGreen);
    else renderer_.text("P1: " + keyboardKeyName(bindings_[0][static_cast<std::size_t>(ControlAction::Punch)].keyboardKey) +
                        "/" + keyboardKeyName(bindings_[0][static_cast<std::size_t>(ControlAction::Kick)].keyboardKey),
                        makeRect(0, 398, 250, 426), 8, kGreen);
    if (twoPlayer_) {
        const std::string prompt = selectionConfirmed_[1] ? "P2 READY" :
            "P2: " + keyboardKeyName(bindings_[1][static_cast<std::size_t>(ControlAction::Punch)].keyboardKey) +
            "/" + keyboardKeyName(bindings_[1][static_cast<std::size_t>(ControlAction::Kick)].keyboardKey);
        renderer_.text(prompt, makeRect(260, 398, 516, 426), 8, kRed);
    } else {
        renderer_.text("TAB ADDS PLAYER 2", makeRect(260, 398, 516, 426), 8, RGB(180, 180, 180));
    }
}

void Game::renderVersus() {
    renderer_.blit(202, 0, 0);
    const int p1 = selection_[0];
    const int p2 = selection_[1];
    renderer_.blitRegion(3000 + p1, {0, 0, renderer_.picture(3000 + p1).width, renderer_.picture(3000 + p1).height}, {76, 120, 123, 155});
    renderer_.blitRegion(3000 + p2, {0, 0, renderer_.picture(3000 + p2).width, renderer_.picture(3000 + p2).height}, {317, 120, 123, 155});
    renderer_.text(std::string(character(p1).name), makeRect(36, 286, 226, 318), 11, kYellow);
    renderer_.text(std::string(character(p2).name), makeRect(290, 286, 480, 318), 11, kYellow);
    for (int i = 0; i < 6; ++i) {
        const int x = i < 3 ? 174 + i * 18 : 288 + (i - 3) * 18;
        renderer_.blit(6000 + kodeDigits_[i], x, 349);
    }
    renderer_.text("1 2 3", makeRect(165, 372, 240, 395), 7, RGB(160, 160, 160));
    renderer_.text("NUM1 2 3", makeRect(278, 372, 364, 395), 7, RGB(160, 160, 160));
    const int seconds = std::max(0, 5 - static_cast<int>(screenTimer_));
    renderer_.text("KOMBAT KODE   " + std::to_string(seconds), makeRect(0, 398, 516, 426), 9, kYellow);
}

void Game::renderPaddle(const Paddle& paddle, int player) {
    if (modifiers_.invisiblePlayers) return;
    const int id = paddle.displayCharacterId;
    const int colorId = (player == 0 ? 1000 : 2000) + id;
    const int maskId = (player == 0 ? 1500 : 2500) + id;
    if (renderer_.picture(colorId)) {
        renderer_.blitMasked(colorId, maskId, {0, 0, 16, 48},
                             {static_cast<int>(paddle.x), static_cast<int>(paddle.y), 16, 48});
    } else {
        renderer_.fillRect(static_cast<int>(paddle.x), static_cast<int>(paddle.y), 16, 48, characterColor(id));
    }
    if (paddle.freeze > 0) renderer_.strokeRect(static_cast<int>(paddle.x) - 2, static_cast<int>(paddle.y) - 2, 20, 52, RGB(100, 220, 255), 2);
    if (paddle.reflect > 0) renderer_.strokeRect(static_cast<int>(paddle.x) - 5, static_cast<int>(paddle.y) - 5, 26, 58, RGB(255, 100, 255), 2);
}

void Game::renderProjectile(const Projectile& projectile) {
    const int colorId = (projectile.owner == 0 ? 1000 : 2000) + projectile.characterId;
    const int maskId = (projectile.owner == 0 ? 1500 : 2500) + projectile.characterId;
    renderer_.circle(static_cast<int>(projectile.x), static_cast<int>(projectile.y), 6, projectile.color);
    renderer_.blitMasked(colorId, maskId, {16, 0, 48, 24},
                         {static_cast<int>(projectile.x) - 14, static_cast<int>(projectile.y) - 8, 28, 16});
}

void Game::renderHitbox(float x, float y, float w, float h, COLORREF color) {
    renderer_.strokeRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), color, 1);
}

void Game::renderMatch() {
    int stage = modifiers_.stageId;
    if (cheats_.stageIndex > 0) stage = 207 + cheats_.stageIndex;
    if (stage == 0) stage = 208 + ((matchNumber_ + roundNumber_ - 1) % 8);
    renderer_.blit(stage, 0, 0);

    if (!modifiers_.hidePowerBars) {
        renderer_.fillRect(30, 13, paddles_[0].energy * 2, 14, kRed);
        renderer_.fillRect(285, 13, paddles_[1].energy * 2, 14, kRed);
    }
    renderer_.text(std::string(character(paddles_[0].characterId).name), makeRect(28, 28, 232, 52), 10, kYellow, DT_LEFT | DT_VCENTER | DT_SINGLELINE);
    renderer_.text(std::string(character(paddles_[1].characterId).name), makeRect(284, 28, 488, 52), 10, kYellow, DT_RIGHT | DT_VCENTER | DT_SINGLELINE);
    for (int i = 0; i < paddles_[0].wins; ++i) renderer_.circle(36 + i * 18, 63, 6, kRed);
    for (int i = 0; i < paddles_[1].wins; ++i) renderer_.circle(480 - i * 18, 63, 6, kRed);

    renderPaddle(paddles_[0], 0);
    renderPaddle(paddles_[1], 1);
    if (ball_.visible) renderer_.circle(static_cast<int>(ball_.x), static_cast<int>(ball_.y), ball_.radius, ball_.color);
    if (modifiers_.decoyBall) renderer_.circle(516 - static_cast<int>(ball_.x), static_cast<int>(ball_.y), ball_.radius, ball_.color);
    for (const Projectile& projectile : projectiles_) renderProjectile(projectile);

    if (cheats_.showHitboxes) {
        renderHitbox(paddles_[0].x, paddles_[0].y, kPaddleWidth, kPaddleHeight, kGreen);
        renderHitbox(paddles_[1].x, paddles_[1].y, kPaddleWidth, kPaddleHeight, kRed);
        renderHitbox(ball_.x - ball_.radius, ball_.y - ball_.radius, ball_.radius * 2, ball_.radius * 2, RGB(255, 255, 255));
        for (const Projectile& projectile : projectiles_) renderHitbox(projectile.x - 7, projectile.y - 7, 14, 14, RGB(255, 100, 255));
    }

    if (!modifiers_.message.empty()) renderer_.text(modifiers_.message, makeRect(10, 90, 506, 118), 8, RGB(255, 255, 255));
    if (!modifiers_.kodeName.empty() && phaseTimer_ < 2.5) renderer_.text(modifiers_.kodeName, makeRect(0, 55, 516, 80), 8, kGreen);
    if (moveBannerTimer_ > 0) renderer_.text(moveBanner_, makeRect(80, 100, 436, 130), 9, RGB(255, 160, 40));
    if (!roundBanner_.empty()) {
        const COLORREF bannerColor = roundBanner_.find("FATALITY") != std::string::npos ? kRed : kYellow;
        renderer_.text(roundBanner_, makeRect(16, 180, 500, 252), 20, bannerColor, DT_CENTER | DT_VCENTER | DT_WORDBREAK);
    }
    if (matchPhase_ == MatchPhase::RoundOver && roundBanner_.find("BABALITY") != std::string::npos) {
        renderer_.blit(3500, 196, 245);
    } else if (matchPhase_ == MatchPhase::RoundOver && roundBanner_.find("FATALITY") != std::string::npos) {
        const int sheet = 4000 + (paddles_[finishingPlayer_].characterId % 12);
        renderer_.blitMasked(sheet, sheet + 500, {0, 0, renderer_.picture(sheet).width, renderer_.picture(sheet).height}, {158, 225, 200, 200});
    }
    renderer_.text("ESC: PAUSE", makeRect(4, 411, 512, 430), 6, RGB(120, 120, 120));
    if (paused_) {
        renderer_.fillRect(170, 180, 176, 64, RGB(5, 5, 8));
        renderer_.strokeRect(170, 180, 176, 64, kRed, 2);
        renderer_.text("PAUSED", makeRect(174, 184, 342, 238), 20, kYellow);
    }
}

void Game::renderContinue() {
    renderer_.blit(203, 58, 74);
    renderer_.blit(204, 183, 141);
    const int remaining = std::max(0, 10 - static_cast<int>(screenTimer_));
    renderer_.text(std::to_string(remaining), makeRect(208, 310, 308, 375), 30, kRed);
    renderer_.text("KREDITS " + std::to_string(credits_), makeRect(0, 390, 516, 425), 11, kYellow);
}

void Game::renderGameOver() {
    renderer_.blit(205, 58, 66);
    renderer_.text("PRESS ENTER", makeRect(0, 385, 516, 425), 11, kYellow);
}

void Game::renderEnding() {
    const CharacterDefinition& winner = character(selection_[0]);
    renderer_.blitRegion(3000 + winner.id, {0, 0, renderer_.picture(3000 + winner.id).width, renderer_.picture(3000 + winner.id).height}, {196, 35, 123, 155});
    renderer_.text("CONGRATULATIONS", makeRect(20, 200, 496, 245), 22, kYellow);
    renderer_.text(std::string(winner.name) + " HAS DEFEATED EVERY CHALLENGER AND CLAIMED THE PONG KOMBAT THRONE.",
                   makeRect(60, 255, 456, 355), 11, RGB(240, 240, 240), DT_CENTER | DT_VCENTER | DT_WORDBREAK);
    renderer_.text("PRESS ENTER FOR KREDITS", makeRect(0, 390, 516, 425), 8, RGB(150, 150, 150));
}

void Game::renderCredits() {
    renderer_.blit(130, 76, 22);
    renderer_.text("PONG KOMBAT 3", makeRect(0, 80, 516, 122), 22, kRed);
    renderer_.text("VERSION 2.1", makeRect(0, 122, 516, 150), 11, kYellow);
    renderer_.text("BY BRANDON KURODA", makeRect(0, 164, 516, 192), 12, kRed);
    renderer_.text("ORIGINAL PONG KOMBAT BY STEFAN GAGNE", makeRect(30, 204, 486, 236), 9, RGB(230, 230, 230));
    renderer_.text("NATIVE WINDOWS PRESERVATION PORT", makeRect(30, 260, 486, 292), 10, kGreen);
    renderer_.text("300 FUNCTIONS AUDITED - 243 ORIGINAL ASSETS EMBEDDED", makeRect(20, 300, 496, 332), 8, RGB(180, 180, 180));
    renderer_.text("PRESS ENTER", makeRect(0, 394, 516, 426), 9, kYellow);
}

void Game::toggleCheatMenu() {
    cheatOpen_ = !cheatOpen_;
    if (cheatOpen_) audio_.play(10001);
}

void Game::handleCheatKey(int virtualKey) {
    if (virtualKey == VK_ESCAPE || virtualKey == VK_F1) {
        cheatOpen_ = false;
        return;
    }
    constexpr int count = 12;
    if (virtualKey == VK_UP) cheatSelection_ = (cheatSelection_ + count - 1) % count;
    if (virtualKey == VK_DOWN) cheatSelection_ = (cheatSelection_ + 1) % count;
    if (virtualKey == VK_LEFT) activateCheatItem(-1);
    if (virtualKey == VK_RIGHT || virtualKey == VK_RETURN || virtualKey == VK_SPACE) activateCheatItem(1);
}

void Game::activateCheatItem(int direction) {
    switch (cheatSelection_) {
    case 0: cheats_.unlockAll = !cheats_.unlockAll; break;
    case 1: cheats_.infiniteP1 = !cheats_.infiniteP1; break;
    case 2: cheats_.infiniteP2 = !cheats_.infiniteP2; break;
    case 3: cheats_.freezeCpu = !cheats_.freezeCpu; break;
    case 4: cheats_.oneHit = !cheats_.oneHit; break;
    case 5: cheats_.disableProjectiles = !cheats_.disableProjectiles; break;
    case 6: cheats_.showHitboxes = !cheats_.showHitboxes; break;
    case 7: cheats_.ballSpeedIndex = (cheats_.ballSpeedIndex + direction + 4) % 4; break;
    case 8: cheats_.stageIndex = (cheats_.stageIndex + direction + 9) % 9; break;
    case 9: audio_.setMuted(!audio_.muted()); break;
    case 10: cheatWinRound(); break;
    case 11: cheatSkipScreen(); break;
    }
    audio_.play(500);
}

void Game::cheatWinRound() {
    if (screen_ == Screen::Match) endRound(0, std::string(character(paddles_[0].characterId).name) + " WINS");
}

void Game::cheatSkipScreen() {
    cheatOpen_ = false;
    switch (screen_) {
    case Screen::Intro: changeScreen(Screen::Title); break;
    case Screen::Title: startSelection(false); break;
    case Screen::ControllerSettings: closeControllerSettings(); break;
    case Screen::Selection:
        selectionConfirmed_[0] = selectionConfirmed_[1] = true;
        beginVersus();
        break;
    case Screen::Versus: applyKombatKode(); startMatch(); break;
    case Screen::Match: finishMatch(0); break;
    case Screen::Continue: beginVersus(); break;
    case Screen::GameOver:
        if (trilogyMode_) returnRequested_ = true;
        else changeScreen(Screen::Title);
        break;
    case Screen::Ending: changeScreen(Screen::Credits); break;
    case Screen::Credits:
        if (trilogyMode_) returnRequested_ = true;
        else changeScreen(Screen::Title);
        break;
    }
}

void Game::renderCheatMenu() {
    renderer_.fillRect(72, 30, 372, 372, RGB(8, 8, 12));
    renderer_.strokeRect(72, 30, 372, 372, RGB(180, 25, 25), 3);
    renderer_.text("KOMBAT KHEATS", makeRect(80, 38, 436, 72), 17, kRed);
    const auto onOff = [](bool value) { return value ? "ON" : "OFF"; };
    static constexpr const char* speeds[] = {"0.5X", "1X", "2X", "3X"};
    std::array<std::string, 12> labels = {
        "UNLOCK ALL: " + std::string(onOff(cheats_.unlockAll)),
        "INFINITE P1: " + std::string(onOff(cheats_.infiniteP1)),
        "INFINITE P2: " + std::string(onOff(cheats_.infiniteP2)),
        "FREEZE CPU: " + std::string(onOff(cheats_.freezeCpu)),
        "ONE HIT FINISH: " + std::string(onOff(cheats_.oneHit)),
        "NO PROJECTILES: " + std::string(onOff(cheats_.disableProjectiles)),
        "SHOW HITBOXES: " + std::string(onOff(cheats_.showHitboxes)),
        "BALL SPEED: " + std::string(speeds[cheats_.ballSpeedIndex]),
        "STAGE: " + std::string(cheats_.stageIndex == 0 ? "AUTO" : std::to_string(207 + cheats_.stageIndex)),
        "AUDIO: " + std::string(audio_.muted() ? "MUTED" : "ON"),
        "WIN ROUND",
        "SKIP SCREEN",
    };
    for (int i = 0; i < static_cast<int>(labels.size()); ++i) {
        const int y = 80 + i * 24;
        if (i == cheatSelection_) renderer_.fillRect(86, y, 344, 22, RGB(90, 12, 12));
        renderer_.text(labels[i], makeRect(94, y, 422, y + 22), 8, i == cheatSelection_ ? kYellow : RGB(220, 220, 220), DT_LEFT | DT_VCENTER | DT_SINGLELINE);
    }
    renderer_.text("ARROWS/ENTER   ESC CLOSE", makeRect(80, 374, 436, 396), 7, RGB(140, 140, 140));
}

} // namespace pk3
