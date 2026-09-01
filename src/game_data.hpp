#pragma once

#include <cstdint>
#include <span>
#include <string_view>
#include <vector>

namespace pk3 {

enum class Token : std::uint8_t { Forward, Back, Up, Down, Punch, Kick };

enum class MoveKind : std::uint8_t {
    Projectile,
    FastProjectile,
    SlowProjectile,
    DiagonalUp,
    DiagonalDown,
    Homing,
    GrenadeHigh,
    GrenadeMid,
    GrenadeLow,
    Freeze,
    ShowerFreeze,
    Net,
    Bomb,
    Reflect,
    Morph,
    Fatality,
    Babality,
};

struct MoveDefinition {
    std::string_view name;
    std::string_view sequence;
    MoveKind kind;
    int soundId;
};

struct CharacterDefinition {
    int id;
    std::string_view name;
    int voiceId;
    int baseSoundId;
    int hitSoundId;
    int deathSoundId;
    std::uint32_t color;
    std::span<const MoveDefinition> moves;
};

enum class KodeKind : std::uint8_t {
    BallColor,
    BallScale,
    InvisibleBall,
    BallSpeed,
    CrazyBall,
    DecoyBall,
    InvisiblePlayers,
    ReversedControls,
    ProjectilesDisabled,
    DamageScale,
    PlayerEnergy,
    HidePowerBars,
    Gravity,
    Message,
    Stage,
};

struct KodeDefinition {
    std::string_view name;
    std::string_view digits;
    KodeKind kind;
    int value;
    std::string_view text;
};

const std::vector<CharacterDefinition>& characters();
const CharacterDefinition& character(int id);
const std::vector<KodeDefinition>& kombatKodes();
std::vector<Token> parseSequence(std::string_view sequence);
std::string_view tokenName(Token token);

} // namespace pk3
