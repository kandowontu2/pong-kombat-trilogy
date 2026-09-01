#pragma once

#include <windows.h>
#include <mmsystem.h>

#include <cstdint>
#include <memory>
#include <vector>

namespace pk3 {

class AudioEngine {
public:
    AudioEngine() = default;
    ~AudioEngine();

    bool initialize();
    void shutdown();
    void update();
    void play(int soundId, bool loop = false, bool music = false);
    void playResource(int resourceId, bool loop = false, bool music = false);
    void playMusic(int soundId);
    void playMusicResource(int resourceId);
    void stopMusic();
    void stopAll();
    void setMuted(bool muted);
    bool muted() const { return muted_; }
    bool validateSound(int soundId) const;
    bool validateResource(int resourceId) const;
    bool validateMusicResource(int resourceId) const;

private:
    struct Voice {
        HWAVEOUT handle = nullptr;
        WAVEHDR header{};
        std::vector<std::uint8_t> pcm;
        bool music = false;
        int soundId = 0;
    };

    struct ParsedWave {
        WAVEFORMATEX format{};
        std::vector<std::uint8_t> pcm;
    };

    struct MidiEvent {
        double seconds = 0;
        std::uint32_t message = 0;
    };

    struct ParsedMidi {
        std::vector<MidiEvent> events;
        double duration = 0;
    };

    static ParsedWave loadWaveResource(int resourceId);
    static ParsedMidi loadMidiResource(int resourceId);
    static std::uint32_t readU32(const std::uint8_t* p);
    static std::uint16_t readU16(const std::uint8_t* p);
    void destroyVoice(std::size_t index);
    void silenceMidi();

    std::vector<std::unique_ptr<Voice>> voices_;
    bool initialized_ = false;
    bool muted_ = false;
    int musicId_ = -1;
    HMIDIOUT midiOut_ = nullptr;
    std::vector<MidiEvent> midiEvents_;
    std::size_t midiEventIndex_ = 0;
    ULONGLONG midiStartedAt_ = 0;
    double midiDuration_ = 0;
};

} // namespace pk3
