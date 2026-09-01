#include "audio.hpp"

#include "resource_ids.hpp"

#include <algorithm>
#include <cstring>

namespace pk3 {
namespace {

struct ResourceView {
    const std::uint8_t* data = nullptr;
    DWORD size = 0;
};

ResourceView loadResourceBytes(int id) {
    HMODULE module = GetModuleHandleW(nullptr);
    HRSRC resource = FindResourceW(module, MAKEINTRESOURCEW(id), RT_RCDATA);
    if (!resource) return {};
    HGLOBAL loaded = LoadResource(module, resource);
    if (!loaded) return {};
    return {static_cast<const std::uint8_t*>(LockResource(loaded)), SizeofResource(module, resource)};
}

} // namespace

AudioEngine::~AudioEngine() {
    shutdown();
}

bool AudioEngine::initialize() {
    midiOutOpen(&midiOut_, MIDI_MAPPER, 0, 0, CALLBACK_NULL);
    initialized_ = true;
    return true;
}

void AudioEngine::shutdown() {
    stopAll();
    if (midiOut_) {
        midiOutClose(midiOut_);
        midiOut_ = nullptr;
    }
    initialized_ = false;
}

std::uint32_t AudioEngine::readU32(const std::uint8_t* p) {
    return static_cast<std::uint32_t>(p[0]) | (static_cast<std::uint32_t>(p[1]) << 8u) |
           (static_cast<std::uint32_t>(p[2]) << 16u) | (static_cast<std::uint32_t>(p[3]) << 24u);
}

std::uint16_t AudioEngine::readU16(const std::uint8_t* p) {
    return static_cast<std::uint16_t>(p[0] | (p[1] << 8u));
}

AudioEngine::ParsedWave AudioEngine::loadWaveResource(int resourceId) {
    ParsedWave wave;
    ResourceView view = loadResourceBytes(resourceId);
    if (!view.data || view.size < 44 || std::memcmp(view.data, "RIFF", 4) != 0 ||
        std::memcmp(view.data + 8, "WAVE", 4) != 0) {
        return wave;
    }

    const std::uint8_t* fmt = nullptr;
    std::uint32_t fmtSize = 0;
    const std::uint8_t* pcm = nullptr;
    std::uint32_t pcmSize = 0;
    std::uint32_t offset = 12;
    while (offset + 8 <= view.size) {
        const std::uint8_t* chunk = view.data + offset;
        const std::uint32_t size = readU32(chunk + 4);
        if (offset + 8u + size > view.size) break;
        if (std::memcmp(chunk, "fmt ", 4) == 0) {
            fmt = chunk + 8;
            fmtSize = size;
        } else if (std::memcmp(chunk, "data", 4) == 0) {
            pcm = chunk + 8;
            pcmSize = size;
        }
        offset += 8u + size + (size & 1u);
    }
    if (!fmt || fmtSize < 16 || !pcm || !pcmSize) {
        return {};
    }

    wave.format.wFormatTag = readU16(fmt + 0);
    wave.format.nChannels = readU16(fmt + 2);
    wave.format.nSamplesPerSec = readU32(fmt + 4);
    wave.format.nAvgBytesPerSec = readU32(fmt + 8);
    wave.format.nBlockAlign = readU16(fmt + 12);
    wave.format.wBitsPerSample = readU16(fmt + 14);
    wave.format.cbSize = 0;
    if (wave.format.wFormatTag != WAVE_FORMAT_PCM || !wave.format.nChannels || !wave.format.nSamplesPerSec) {
        return {};
    }
    wave.pcm.assign(pcm, pcm + pcmSize);
    return wave;
}

AudioEngine::ParsedMidi AudioEngine::loadMidiResource(int resourceId) {
    ParsedMidi result;
    ResourceView view = loadResourceBytes(resourceId);
    if (!view.data || view.size < 14) return result;
    const std::uint8_t* source = view.data;
    std::size_t size = view.size;
    if (size >= 12 && std::memcmp(source, "RIFF", 4) == 0 && std::memcmp(source + 8, "RMID", 4) == 0) {
        std::size_t cursor = 12;
        bool found = false;
        while (cursor + 8 <= size) {
            const std::uint32_t chunkSize = readU32(source + cursor + 4);
            if (cursor + 8u + chunkSize > size) break;
            if (std::memcmp(source + cursor, "data", 4) == 0) {
                source += cursor + 8;
                size = chunkSize;
                found = true;
                break;
            }
            cursor += 8u + chunkSize + (chunkSize & 1u);
        }
        if (!found) return result;
    }
    auto be16 = [](const std::uint8_t* p) {
        return static_cast<std::uint16_t>((p[0] << 8u) | p[1]);
    };
    auto be32 = [](const std::uint8_t* p) {
        return (static_cast<std::uint32_t>(p[0]) << 24u) |
               (static_cast<std::uint32_t>(p[1]) << 16u) |
               (static_cast<std::uint32_t>(p[2]) << 8u) | p[3];
    };
    if (size < 14 || std::memcmp(source, "MThd", 4) != 0) return result;
    const std::uint32_t headerSize = be32(source + 4);
    if (headerSize < 6 || 8u + headerSize > size) return result;
    const std::uint16_t trackCount = be16(source + 10);
    const std::uint16_t division = be16(source + 12);
    if (!trackCount || !division || (division & 0x8000u)) return result;

    struct RawEvent { std::uint64_t tick; bool tempo; std::uint32_t value; };
    std::vector<RawEvent> rawEvents;
    std::size_t trackOffset = 8u + headerSize;
    auto readVlq = [](const std::uint8_t* data, std::size_t end, std::size_t& cursor,
                      std::uint32_t& value) {
        value = 0;
        for (int count = 0; count < 4 && cursor < end; ++count) {
            const std::uint8_t byte = data[cursor++];
            value = (value << 7u) | (byte & 0x7fu);
            if (!(byte & 0x80u)) return true;
        }
        return false;
    };
    for (std::uint16_t track = 0; track < trackCount; ++track) {
        if (trackOffset + 8 > size || std::memcmp(source + trackOffset, "MTrk", 4) != 0) return {};
        const std::size_t trackSize = be32(source + trackOffset + 4);
        std::size_t cursor = trackOffset + 8;
        const std::size_t end = cursor + trackSize;
        if (end > size) return {};
        std::uint64_t tick = 0;
        std::uint8_t runningStatus = 0;
        while (cursor < end) {
            std::uint32_t delta = 0;
            if (!readVlq(source, end, cursor, delta)) return {};
            tick += delta;
            if (cursor >= end) return {};
            std::uint8_t status = source[cursor];
            if (status & 0x80u) {
                ++cursor;
                if (status < 0xF0u) runningStatus = status;
            } else {
                if (!runningStatus) return {};
                status = runningStatus;
            }
            if (status == 0xFFu) {
                if (cursor >= end) return {};
                const std::uint8_t type = source[cursor++];
                std::uint32_t length = 0;
                if (!readVlq(source, end, cursor, length) || cursor + length > end) return {};
                if (type == 0x51u && length == 3)
                    rawEvents.push_back({tick, true, (static_cast<std::uint32_t>(source[cursor]) << 16u) |
                                                       (static_cast<std::uint32_t>(source[cursor + 1]) << 8u) |
                                                       source[cursor + 2]});
                cursor += length;
                continue;
            }
            if (status == 0xF0u || status == 0xF7u) {
                std::uint32_t length = 0;
                if (!readVlq(source, end, cursor, length) || cursor + length > end) return {};
                cursor += length;
                continue;
            }
            const int dataBytes = ((status & 0xE0u) == 0xC0u) ? 1 : 2;
            if (cursor + dataBytes > end) return {};
            const std::uint8_t first = source[cursor++];
            const std::uint8_t second = dataBytes == 2 ? source[cursor++] : 0;
            rawEvents.push_back({tick, false, static_cast<std::uint32_t>(status) |
                                              (static_cast<std::uint32_t>(first) << 8u) |
                                              (static_cast<std::uint32_t>(second) << 16u)});
        }
        trackOffset = end;
    }
    std::stable_sort(rawEvents.begin(), rawEvents.end(), [](const RawEvent& left, const RawEvent& right) {
        if (left.tick != right.tick) return left.tick < right.tick;
        return left.tempo && !right.tempo;
    });
    std::uint64_t previousTick = 0;
    std::uint32_t tempo = 500'000;
    double seconds = 0;
    for (const RawEvent& event : rawEvents) {
        seconds += static_cast<double>(event.tick - previousTick) * tempo /
                   (static_cast<double>(division) * 1'000'000.0);
        previousTick = event.tick;
        if (event.tempo) tempo = event.value;
        else result.events.push_back({seconds, event.value});
    }
    result.duration = seconds + 0.25;
    return result;
}

void AudioEngine::play(int soundId, bool loop, bool music) {
    playResource(kSoundResourceBase + soundId, loop, music);
}

void AudioEngine::playResource(int resourceId, bool loop, bool music) {
    if (!initialized_ || muted_) return;
    ParsedWave wave = loadWaveResource(resourceId);
    if (wave.pcm.empty()) return;

    update();
    while (voices_.size() >= 18) {
        destroyVoice(0);
    }

    auto voice = std::make_unique<Voice>();
    voice->pcm = std::move(wave.pcm);
    voice->music = music;
    voice->soundId = resourceId;
    MMRESULT result = waveOutOpen(&voice->handle, WAVE_MAPPER, &wave.format, 0, 0, CALLBACK_NULL);
    if (result != MMSYSERR_NOERROR) return;

    voice->header.lpData = reinterpret_cast<LPSTR>(voice->pcm.data());
    voice->header.dwBufferLength = static_cast<DWORD>(voice->pcm.size());
    if (loop) {
        voice->header.dwFlags = WHDR_BEGINLOOP | WHDR_ENDLOOP;
        voice->header.dwLoops = 0xffffffffu;
    }
    if (waveOutPrepareHeader(voice->handle, &voice->header, sizeof(WAVEHDR)) != MMSYSERR_NOERROR) {
        waveOutClose(voice->handle);
        return;
    }
    if (waveOutWrite(voice->handle, &voice->header, sizeof(WAVEHDR)) != MMSYSERR_NOERROR) {
        waveOutUnprepareHeader(voice->handle, &voice->header, sizeof(WAVEHDR));
        waveOutClose(voice->handle);
        return;
    }
    voices_.push_back(std::move(voice));
}

void AudioEngine::playMusic(int soundId) {
    playMusicResource(kSoundResourceBase + soundId);
}

void AudioEngine::playMusicResource(int resourceId) {
    if (musicId_ == resourceId && !muted_) return;
    stopMusic();
    musicId_ = resourceId;
    ParsedMidi midi = loadMidiResource(resourceId);
    if (!midi.events.empty() && midiOut_) {
        midiEvents_ = std::move(midi.events);
        midiDuration_ = midi.duration;
        midiEventIndex_ = 0;
        midiStartedAt_ = GetTickCount64();
    } else {
        playResource(resourceId, true, true);
    }
}

void AudioEngine::destroyVoice(std::size_t index) {
    if (index >= voices_.size()) return;
    Voice& voice = *voices_[index];
    if (voice.handle) {
        waveOutReset(voice.handle);
        waveOutUnprepareHeader(voice.handle, &voice.header, sizeof(WAVEHDR));
        waveOutClose(voice.handle);
        voice.handle = nullptr;
    }
    voices_.erase(voices_.begin() + static_cast<std::ptrdiff_t>(index));
}

void AudioEngine::update() {
    for (std::size_t i = voices_.size(); i-- > 0;) {
        Voice& voice = *voices_[i];
        if ((voice.header.dwFlags & WHDR_DONE) && !(voice.header.dwFlags & WHDR_BEGINLOOP)) {
            destroyVoice(i);
        }
    }
    if (midiOut_ && !midiEvents_.empty() && !muted_) {
        double elapsed = static_cast<double>(GetTickCount64() - midiStartedAt_) / 1000.0;
        while (midiEventIndex_ < midiEvents_.size() && midiEvents_[midiEventIndex_].seconds <= elapsed) {
            midiOutShortMsg(midiOut_, midiEvents_[midiEventIndex_].message);
            ++midiEventIndex_;
        }
        if (midiEventIndex_ >= midiEvents_.size() && elapsed >= midiDuration_) {
            silenceMidi();
            midiEventIndex_ = 0;
            midiStartedAt_ = GetTickCount64();
        }
    }
}

void AudioEngine::silenceMidi() {
    if (!midiOut_) return;
    for (std::uint32_t channel = 0; channel < 16; ++channel)
        midiOutShortMsg(midiOut_, 0xB0u | channel | (123u << 8u));
}

void AudioEngine::stopMusic() {
    for (std::size_t i = voices_.size(); i-- > 0;) {
        if (voices_[i]->music) destroyVoice(i);
    }
    silenceMidi();
    midiEvents_.clear();
    midiEventIndex_ = 0;
    midiDuration_ = 0;
    musicId_ = -1;
}

void AudioEngine::stopAll() {
    while (!voices_.empty()) destroyVoice(voices_.size() - 1);
    silenceMidi();
    midiEvents_.clear();
    midiEventIndex_ = 0;
    midiDuration_ = 0;
    musicId_ = -1;
}

void AudioEngine::setMuted(bool muted) {
    if (muted_ == muted) return;
    muted_ = muted;
    if (muted_) stopAll();
}

bool AudioEngine::validateSound(int soundId) const {
    return validateResource(kSoundResourceBase + soundId);
}

bool AudioEngine::validateResource(int resourceId) const {
    ParsedWave wave = loadWaveResource(resourceId);
    return wave.format.wFormatTag == WAVE_FORMAT_PCM && !wave.pcm.empty();
}

bool AudioEngine::validateMusicResource(int resourceId) const {
    return !loadMidiResource(resourceId).events.empty();
}

} // namespace pk3
