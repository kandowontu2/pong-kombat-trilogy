#include "game_data.hpp"

#include <algorithm>
#include <array>
#include <cctype>

namespace pk3 {
namespace {

using MK = MoveKind;

constexpr MoveDefinition kShang[] = {
    {"Fireball", "B B P", MK::Projectile, 3000},
    {"Fire Eruption", "F B B K", MK::GrenadeMid, 3000},
    {"Morph: Cyrax", "K K K", MK::Morph, 3508},
    {"Morph: Kabal", "K P K", MK::Morph, 3508},
    {"Morph: Kung Lao", "U F F K", MK::Morph, 3508},
    {"Morph: Liu Kang", "F F B P", MK::Morph, 3508},
    {"Morph: Motaro", "F F D K", MK::Morph, 3508},
    {"Morph: Nightwolf", "U U U K", MK::Morph, 3508},
    {"Morph: Nodnarb", "U U U P", MK::Morph, 3508},
    {"Morph: Noob Saibot", "B B B K", MK::Morph, 3508},
    {"Morph: Omoh", "D D U K", MK::Morph, 3508},
    {"Morph: Sektor", "B D B P", MK::Morph, 3508},
    {"Morph: Shao Kahn", "F F D P", MK::Morph, 3508},
    {"Morph: Shova", "F F U K", MK::Morph, 3508},
    {"Morph: Sindel", "B D B K", MK::Morph, 3508},
    {"Morph: Sub-Zero", "F D F P", MK::Morph, 3508},
    {"Spikes Fatality", "F D D F P", MK::Fatality, 3506},
    {"Soul Fatality", "P U U P", MK::Fatality, 3524},
    {"Baby Fatality", "P K K", MK::Fatality, 1011},
    {"Babality", "K P P", MK::Babality, 1011},
};

constexpr MoveDefinition kSindel[] = {
    {"Fireball", "F F P", MK::Projectile, 3001},
    {"Diagonal Fireball (Up)", "D F K", MK::DiagonalUp, 3001},
    {"Diagonal Fireball (Down)", "D B K", MK::DiagonalDown, 3001},
    {"Football Fatality", "F B B B K", MK::Fatality, 3523},
    {"Scream Fatality", "P K K P", MK::Fatality, 3516},
    {"Babality", "K K K U", MK::Babality, 1011},
};

constexpr MoveDefinition kLiu[] = {
    {"Fireball", "F F P", MK::Projectile, 3002},
    {"Fast Fireball", "F F F P", MK::FastProjectile, 3002},
    {"Slow Fireball", "F F B P", MK::SlowProjectile, 3002},
    {"Arcade Fatality", "D U D D K", MK::Fatality, 3504},
    {"Baby Fatality", "D D U P", MK::Fatality, 1011},
    {"Babality", "U U U P", MK::Babality, 1011},
};

constexpr MoveDefinition kSubZero[] = {
    {"Forward Freeze", "D F P", MK::Freeze, 3003},
    {"Shower Freeze (Front)", "D F B K", MK::ShowerFreeze, 3501},
    {"Shower Freeze (Middle)", "D F K", MK::ShowerFreeze, 3501},
    {"Shower Freeze (Back)", "D B F K", MK::ShowerFreeze, 3501},
    {"Fridge Fatality", "U U D D P", MK::Fatality, 3500},
    {"Spike Fatality", "K P K K", MK::Fatality, 3506},
    {"Fridge Fatality 2", "D B D B P", MK::Fatality, 3500},
    {"Babality", "D D B B P", MK::Babality, 1011},
};

constexpr MoveDefinition kOmoh[] = {
    {"Missile", "B F P", MK::Projectile, 3006},
    {"Grenade (High)", "F D B K", MK::GrenadeHigh, 3004},
    {"Grenade (Mid)", "F D B P", MK::GrenadeMid, 3004},
    {"Grenade (Low)", "B D F K", MK::GrenadeLow, 3004},
    {"Stomp Fatality", "K K D U", MK::Fatality, 3519},
    {"Kiss Fatality", "F F P B", MK::Fatality, 3517},
    {"Stomp Fatality 2", "D D D P", MK::Fatality, 3519},
    {"Babality", "D D D K", MK::Babality, 1011},
};

constexpr MoveDefinition kCyrax[] = {
    {"Bomb", "F F K", MK::Bomb, 3502},
    {"Net", "B B K", MK::Net, 3005},
    {"Chopper Fatality", "D D D U K", MK::Fatality, 3509},
    {"Chopper Fatality 2", "B F U K", MK::Fatality, 3509},
    {"Babality", "F F B K", MK::Babality, 1011},
};

constexpr MoveDefinition kSektor[] = {
    {"Missile", "F F P", MK::Projectile, 3006},
    {"Homing Missile", "F D B P", MK::Homing, 3012},
    {"Clamp Fatality", "B B F B K", MK::Fatality, 3510},
    {"Smash Fatality", "B F K P", MK::Fatality, 3505},
    {"Clamp Fatality 2", "F F B P", MK::Fatality, 3510},
    {"Babality", "B D D B K", MK::Babality, 1011},
};

constexpr MoveDefinition kKungLao[] = {
    {"Hat Toss (Up)", "F U P", MK::DiagonalUp, 3007},
    {"Hat Toss (Middle)", "B F P", MK::Projectile, 3007},
    {"Hat Toss (Down)", "F D P", MK::DiagonalDown, 3007},
    {"Hat Fatality", "B B F K", MK::Fatality, 3014},
    {"Hat Fatality 2", "F B B F P", MK::Fatality, 3014},
    {"Babality", "F F D P", MK::Babality, 1011},
};

constexpr MoveDefinition kKabal[] = {
    {"Fireball", "B B P", MK::Projectile, 3008},
    {"Razor", "B B B K", MK::Projectile, 3013},
    {"Razor Fatality", "F F F B K", MK::Fatality, 3014},
    {"Balloon Fatality", "K K B F P", MK::Fatality, 3523},
    {"Babality", "P P P K", MK::Babality, 1011},
};

constexpr MoveDefinition kShaoKahn[] = {
    {"Fireball", "B B P", MK::Projectile, 3000},
    {"Seeker Fireball", "B B K", MK::Homing, 3012},
};

constexpr MoveDefinition kMotaro[] = {
    {"Fireball", "F F K", MK::Projectile, 3000},
    {"Diagonal Fireball (Up)", "U U K", MK::DiagonalUp, 3000},
    {"Diagonal Fireball (Down)", "D D K", MK::DiagonalDown, 3000},
};

constexpr MoveDefinition kNodnarb[] = {
    {"Ball", "B B K", MK::Projectile, 500},
    {"Ball (Up)", "B B U K", MK::DiagonalUp, 500},
    {"Ball (Down)", "B B D K", MK::DiagonalDown, 500},
    {"Ball Fatality", "B F D F P", MK::Fatality, 3523},
    {"Babality", "F F F K", MK::Babality, 1011},
};

constexpr MoveDefinition kNightwolf[] = {
    {"Arrow", "D B P", MK::FastProjectile, 3015},
    {"Reflect", "B B B K", MK::Reflect, 501},
    {"Light Fatality", "U U B F K", MK::Fatality, 3520},
    {"Raiden Fatality", "K K B B", MK::Fatality, 3521},
    {"Babality", "F B F B P", MK::Babality, 1011},
};

constexpr MoveDefinition kShova[] = {
    {"Fireball", "D F K", MK::Projectile, 3010},
    {"Donut", "D F P", MK::Projectile, 3011},
    {"Rip Fatality", "F F F K", MK::Fatality, 3515},
    {"Babality", "U U D", MK::Babality, 1011},
};

constexpr MoveDefinition kNoob[] = {
    {"Fireball", "F F K", MK::Projectile, 3000},
    {"Babality", "D D F P", MK::Babality, 1011},
};

const std::vector<CharacterDefinition> kCharacters = {
    {0, "SHANG TSUNG", 228, 2000, 2005, 2500, 0xffff5a20u, kShang},
    {1, "SINDEL", 229, 2001, 2006, 2501, 0xffb060ffu, kSindel},
    {2, "LIU KANG", 230, 2002, 2007, 2502, 0xffff3040u, kLiu},
    {3, "SUB-ZERO", 231, 2000, 2005, 2500, 0xff2090ffu, kSubZero},
    {4, "OMOH", 244, 2000, 2010, 2500, 0xff4060ffu, kOmoh},
    {5, "CYRAX", 233, 2003, 2008, 2500, 0xffffd020u, kCyrax},
    {6, "SEKTOR", 234, 2003, 2008, 2500, 0xffff3030u, kSektor},
    {7, "KUNG LAO", 235, 2000, 2005, 2500, 0xff5050ffu, kKungLao},
    {8, "KABAL", 236, 2000, 2005, 2500, 0xff50d050u, kKabal},
    {9, "SHAO KAHN", 238, 2004, 2009, 2500, 0xffff4020u, kShaoKahn},
    {10, "MOTARO", 239, 2013, 2011, 2500, 0xffa06030u, kMotaro},
    {11, "NODNARB", 240, 2000, 2005, 2500, 0xff30ff30u, kNodnarb},
    {12, "LOSER", 240, 2000, 2005, 2500, 0xff808080u, {}},
    {13, "NIGHTWOLF", 241, 2000, 2005, 2500, 0xff40c060u, kNightwolf},
    {14, "SHOVA", 242, 2001, 2006, 2501, 0xffff80d0u, kShova},
    {15, "NOOB SAIBOT", 243, 2000, 2005, 2500, 0xff303030u, kNoob},
};

using KK = KodeKind;
const std::vector<KodeDefinition> kKodes = {
    {"Blue Ball", "100001", KK::BallColor, 0x2080ff, {}},
    {"Red Ball", "010010", KK::BallColor, 0xff2020, {}},
    {"Green Ball", "001100", KK::BallColor, 0x20ff40, {}},
    {"White Ball", "100100", KK::BallColor, 0xffffff, {}},
    {"Yellow Ball", "010001", KK::BallColor, 0xffff20, {}},
    {"Purple Ball", "100010", KK::BallColor, 0xb040ff, {}},
    {"Huge Ball", "200002", KK::BallScale, 2, {}},
    {"Huge Red Ball", "020020", KK::BallScale, 2, {}},
    {"Huge Green Ball", "002002", KK::BallScale, 2, {}},
    {"Huge White Ball", "200200", KK::BallScale, 2, {}},
    {"Huge Yellow Ball", "020002", KK::BallScale, 2, {}},
    {"Huge Purple Ball", "200020", KK::BallScale, 2, {}},
    {"Mammoth Ball", "440660", KK::BallScale, 4, {}},
    {"Tiny Ball", "221442", KK::BallScale, -2, {}},
    {"Invisible Ball", "001001", KK::InvisibleBall, 1, {}},
    {"Turbo Ball", "123123", KK::BallSpeed, 2, {}},
    {"Super Turbo Ball", "123456", KK::BallSpeed, 3, {}},
    {"Crazy Ball", "224422", KK::CrazyBall, 1, {}},
    {"Crazy Ball 2", "010976", KK::CrazyBall, 2, {}},
    {"Slow Ball", "566544", KK::BallSpeed, -2, {}},
    {"Decoy Ball", "022067", KK::DecoyBall, 1, {}},
    {"Invisible Players", "011182", KK::InvisiblePlayers, 1, {}},
    {"Reversed Controls", "011276", KK::ReversedControls, 1, {}},
    {"Projectiles Disabled", "630036", KK::ProjectilesDisabled, 1, {}},
    {"Damage Half", "151515", KK::DamageScale, 50, {}},
    {"Damage Double", "353535", KK::DamageScale, 200, {}},
    {"1/2 Energy Player 1", "033000", KK::PlayerEnergy, 150, {}},
    {"1/2 Energy Player 2", "000033", KK::PlayerEnergy, 250, {}},
    {"1/2 Energy Both", "033033", KK::PlayerEnergy, 350, {}},
    {"1/4 Energy Player 1", "707000", KK::PlayerEnergy, 125, {}},
    {"1/4 Energy Player 2", "000707", KK::PlayerEnergy, 225, {}},
    {"1/4 Energy Both", "707707", KK::PlayerEnergy, 325, {}},
    {"No Power Bars", "010894", KK::HidePowerBars, 1, {}},
    {"Gravity Paddles", "999999", KK::Gravity, 1, {}},
    {"Anti Gravity Paddles", "111111", KK::Gravity, -1, {}},
    {"No Knowledge", "123926", KK::Message, 0, "THERE IS NO KNOWLEDGE THAT IS NOT POWER"},
    {"Sega Sucks", "333333", KK::Message, 0, "SEGA SUCKS"},
    {"I Was Shamed", "222222", KK::Message, 0, "I WAS SHAMED INTO MAKING THIS KODE"},
    {"I'm On A Plain", "888888", KK::Message, 0, "I'M ON A PLAIN"},
    {"Grandma Take Me Home", "777777", KK::Message, 0, "GRANDMA TAKE ME HOME"},
    {"I Think I'm Dumb", "444444", KK::Message, 0, "I THINK I'M DUMB"},
    {"Doll Steak", "666666", KK::Message, 0, "DOLL STEAK, TEST MEAT"},
    {"How Now", "555555", KK::Message, 0, "HOW NOW, BROWN COW?"},
    {"Happy Valley", "351351", KK::Stage, 210, {}},
    {"The Inferno", "352352", KK::Stage, 209, {}},
    {"Desktop", "353353", KK::Stage, 211, {}},
    {"The Alley", "354354", KK::Stage, 208, {}},
    {"Portal", "355355", KK::Stage, 214, {}},
    {"Space", "356356", KK::Stage, 215, {}},
};

} // namespace

const std::vector<CharacterDefinition>& characters() {
    return kCharacters;
}

const CharacterDefinition& character(int id) {
    auto found = std::find_if(kCharacters.begin(), kCharacters.end(),
                              [id](const CharacterDefinition& item) { return item.id == id; });
    return found != kCharacters.end() ? *found : kCharacters.front();
}

const std::vector<KodeDefinition>& kombatKodes() {
    return kKodes;
}

std::vector<Token> parseSequence(std::string_view sequence) {
    std::vector<Token> result;
    for (char ch : sequence) {
        switch (static_cast<char>(std::toupper(static_cast<unsigned char>(ch)))) {
        case 'F': result.push_back(Token::Forward); break;
        case 'B': result.push_back(Token::Back); break;
        case 'U': result.push_back(Token::Up); break;
        case 'D': result.push_back(Token::Down); break;
        case 'P': result.push_back(Token::Punch); break;
        case 'K': result.push_back(Token::Kick); break;
        default: break;
        }
    }
    return result;
}

std::string_view tokenName(Token token) {
    switch (token) {
    case Token::Forward: return "F";
    case Token::Back: return "B";
    case Token::Up: return "U";
    case Token::Down: return "D";
    case Token::Punch: return "P";
    case Token::Kick: return "K";
    }
    return "?";
}

} // namespace pk3
