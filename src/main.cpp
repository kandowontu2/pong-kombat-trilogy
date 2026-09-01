#include "app.hpp"
#include "collection.hpp"
#include "game.hpp"
#include "renderer.hpp"
#include "audio.hpp"
#include "pk3_asset_catalog.hpp"

#include <windows.h>
#include <shellapi.h>

#include <filesystem>
#include <string>

namespace {

template <typename T>
void tap(T& target, int key) {
    target.onKeyDown(key, false);
    target.update(1.0 / 60.0);
    target.onKeyUp(key);
}

int runSelfTest(const std::filesystem::path& output) {
    if (FAILED(CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED))) return 20;
    pk3::Renderer renderer;
    pk3::AudioEngine audio;
    if (!renderer.initialize() || !audio.initialize()) {
        CoUninitialize();
        return 21;
    }
    audio.setMuted(true);
    std::filesystem::create_directories(output);
    pk3::Game game(renderer, audio, false);
    game.initialize();

    for (const auto& expected : pk3::generated::kPictures) {
        const pk3::Image& image = renderer.picture(expected.id);
        if (!image || image.width != expected.width || image.height != expected.height) return 28;
    }
    for (int soundId : pk3::generated::kSounds) {
        if (!audio.validateSound(soundId)) return 29;
    }
    for (const auto& expected : pk3::generated::kPk1Pictures) {
        const pk3::Image& image = renderer.pictureResource(expected.resource);
        if (!image || image.width != expected.width || image.height != expected.height) return 31;
    }
    for (const auto& sound : pk3::generated::kPk1Sounds)
        if (!audio.validateResource(sound.resource)) return 32;
    for (const auto& expected : pk3::generated::kPk2Pictures) {
        const pk3::Image& image = renderer.pictureResource(expected.resource);
        if (!image || image.width != expected.width || image.height != expected.height) return 33;
    }
    for (const auto& sound : pk3::generated::kPk2Sounds)
        if (!audio.validateResource(sound.resource)) return 34;
    for (const auto& music : pk3::generated::kPk2Music)
        if (!audio.validateMusicResource(music.resource)) return 54;

    game.render();
    if (!renderer.saveBmp((output / L"01-intro.bmp").c_str())) return 22;
    tap(game, VK_RETURN);
    game.render();
    if (!renderer.saveBmp((output / L"02-title.bmp").c_str())) return 23;
    tap(game, VK_DOWN);
    tap(game, VK_DOWN);
    tap(game, VK_RETURN);
    game.render();
    if (!renderer.saveBmp((output / L"03-controller-settings.bmp").c_str())) return 24;
    for (int row = 0; row < 5; ++row) tap(game, VK_DOWN);
    tap(game, VK_RETURN);
    tap(game, 'Z');
    tap(game, VK_ESCAPE);
    tap(game, VK_UP);
    tap(game, VK_UP);
    tap(game, VK_RETURN);
    game.render();
    if (!renderer.saveBmp((output / L"04-selection.bmp").c_str())) return 25;
    tap(game, 'Z');
    game.render();
    if (!renderer.saveBmp((output / L"05-versus.bmp").c_str())) return 26;
    tap(game, VK_RETURN);
    for (int i = 0; i < 180; ++i) game.update(1.0 / 60.0);
    game.render();
    if (!renderer.saveBmp((output / L"06-match.bmp").c_str())) return 27;
    game.toggleCheatMenu();
    game.render();
    if (!renderer.saveBmp((output / L"07-cheats.bmp").c_str())) return 30;

    pk3::Collection collection(renderer, audio);
    collection.initialize();
    collection.render();
    if (!renderer.saveBmp((output / L"08-trilogy-menu.bmp").c_str())) return 35;
    tap(collection, VK_RETURN);
    collection.render();
    if (!renderer.saveBmp((output / L"09-pk1-intro.bmp").c_str())) return 36;
    tap(collection, VK_F12);
    tap(collection, VK_DOWN);
    tap(collection, VK_RETURN);
    collection.render();
    if (!renderer.saveBmp((output / L"10-pk2-intro.bmp").c_str())) return 37;
    tap(collection, VK_F12);
    tap(collection, VK_DOWN);
    tap(collection, VK_RETURN);
    collection.render();
    if (!renderer.saveBmp((output / L"11-pk3-intro.bmp").c_str())) return 38;
    tap(collection, VK_F12);
    tap(collection, VK_DOWN);
    tap(collection, VK_RETURN);
    collection.render();
    if (!renderer.saveBmp((output / L"12-shared-controller-settings.bmp").c_str())) return 39;
    tap(collection, VK_ESCAPE);
    if (!collection.atLauncher()) return 40;
    tap(collection, VK_DOWN);
    tap(collection, VK_RETURN);
    collection.render();
    if (!renderer.saveBmp((output / L"27-trilogy-credits.bmp").c_str())) return 61;
    tap(collection, VK_ESCAPE);
    if (!collection.atLauncher()) return 62;

    pk3::LegacyGame pk1Lifecycle(pk3::LegacyGame::Edition::PongKombat, renderer, audio);
    pk1Lifecycle.initialize();
    if (!pk1Lifecycle.runReturnLifecycleSelfTest()) return 41;
    pk3::LegacyGame pk2Lifecycle(pk3::LegacyGame::Edition::PongKombat2, renderer, audio);
    pk2Lifecycle.initialize();
    if (!pk2Lifecycle.runReturnLifecycleSelfTest()) return 42;
    pk3::LegacyGame pk1Special(pk3::LegacyGame::Edition::PongKombat, renderer, audio);
    pk1Special.initialize();
    if (!pk1Special.runSpecialMoveSelfTest()) return 55;
    pk1Special.render();
    if (!renderer.saveBmp((output / L"23-pk1-fatality.bmp").c_str())) return 57;
    pk3::LegacyGame pk2Special(pk3::LegacyGame::Edition::PongKombat2, renderer, audio);
    pk2Special.initialize();
    if (!pk2Special.runSpecialMoveSelfTest()) return 56;
    pk2Special.render();
    if (!renderer.saveBmp((output / L"24-pk2-dismantle.bmp").c_str())) return 58;
    pk3::Game pk3Lifecycle(renderer, audio, false, true);
    pk3Lifecycle.initialize();
    if (!pk3Lifecycle.runReturnLifecycleSelfTest()) return 43;

    pk3::LegacyGame pk1(pk3::LegacyGame::Edition::PongKombat, renderer, audio);
    pk1.initialize();
    tap(pk1, VK_RETURN);
    pk1.render();
    if (!renderer.saveBmp((output / L"13-pk1-mode.bmp").c_str())) return 44;
    tap(pk1, VK_DOWN);
    pk1.render();
    if (!renderer.saveBmp((output / L"26-pk1-mode-two-player.bmp").c_str())) return 60;
    tap(pk1, VK_UP);
    tap(pk1, VK_RETURN);
    tap(pk1, 'X');
    pk1.render();
    if (!renderer.saveBmp((output / L"14-pk1-select.bmp").c_str())) return 45;
    tap(pk1, VK_LSHIFT);
    pk1.render();
    if (!renderer.saveBmp((output / L"15-pk1-versus.bmp").c_str())) return 46;
    tap(pk1, VK_RETURN);
    for (int i = 0; i < 60; ++i) pk1.update(1.0 / 60.0);
    pk1.render();
    if (!renderer.saveBmp((output / L"16-pk1-match.bmp").c_str())) return 47;
    pk1.toggleCheatMenu();
    pk1.render();
    if (!renderer.saveBmp((output / L"17-pk1-cheats.bmp").c_str())) return 48;

    pk3::LegacyGame pk2(pk3::LegacyGame::Edition::PongKombat2, renderer, audio);
    pk2.initialize();
    tap(pk2, VK_RETURN);
    pk2.render();
    if (!renderer.saveBmp((output / L"18-pk2-mode.bmp").c_str())) return 49;
    tap(pk2, VK_RETURN);
    pk2.render();
    if (!renderer.saveBmp((output / L"19-pk2-select.bmp").c_str())) return 50;
    tap(pk2, VK_LSHIFT);
    pk2.render();
    if (!renderer.saveBmp((output / L"20-pk2-versus.bmp").c_str())) return 51;
    tap(pk2, VK_RETURN);
    for (int i = 0; i < 60; ++i) pk2.update(1.0 / 60.0);
    pk2.render();
    if (!renderer.saveBmp((output / L"21-pk2-match.bmp").c_str())) return 52;
    pk2.toggleCheatMenu();
    pk2.render();
    if (!renderer.saveBmp((output / L"22-pk2-cheats.bmp").c_str())) return 53;

    pk3::LegacyGame pk2Secrets(pk3::LegacyGame::Edition::PongKombat2, renderer, audio);
    pk2Secrets.initialize();
    for (int key : {'R', 'Y', 'A', 'N', 'A', 'R', 'T'}) tap(pk2Secrets, key);
    pk2Secrets.render();
    if (!renderer.saveBmp((output / L"25-pk2-secret-select.bmp").c_str())) return 59;

    audio.shutdown();
    renderer.shutdown();
    CoUninitialize();
    return 0;
}

} // namespace

int WINAPI wWinMain(HINSTANCE instance, HINSTANCE, PWSTR, int showCommand) {
    int argc = 0;
    LPWSTR* argv = CommandLineToArgvW(GetCommandLineW(), &argc);
    if (argv && argc >= 2 && std::wstring(argv[1]) == L"--self-test") {
        const std::filesystem::path output = argc >= 3 ? std::filesystem::path(argv[2])
                                                        : std::filesystem::path(L"self-test");
        LocalFree(argv);
        return runSelfTest(output);
    }
    if (argv) LocalFree(argv);
    pk3::App app;
    return app.run(instance, showCommand);
}
