cmake_minimum_required(VERSION 3.24)

project(PongKombatTrilogyNative VERSION 1.0.0 LANGUAGES CXX RC)

if(NOT WIN32)
    message(FATAL_ERROR "Pong Kombat Trilogy Native targets Windows only.")
endif()

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(Python3 REQUIRED COMPONENTS Interpreter)

set(PK3_ASSET_ROOT "${CMAKE_SOURCE_DIR}/analysis/assets-v2.1-final")
set(PK3_GENERATED_DIR "${CMAKE_BINARY_DIR}/generated")
set(PK3_GENERATED_RC "${PK3_GENERATED_DIR}/pk3_assets.rc")
set(PK3_GENERATED_ICON "${PK3_GENERATED_DIR}/pk3.ico")
set(PK3_GENERATED_CATALOG "${PK3_GENERATED_DIR}/pk3_asset_catalog.hpp")

add_custom_command(
    OUTPUT "${PK3_GENERATED_RC}" "${PK3_GENERATED_ICON}" "${PK3_GENERATED_CATALOG}"
    COMMAND "${CMAKE_COMMAND}" -E make_directory "${PK3_GENERATED_DIR}"
    COMMAND "${Python3_EXECUTABLE}"
            "${CMAKE_SOURCE_DIR}/tools/generate_windows_resources.py"
            --asset-root "${PK3_ASSET_ROOT}"
            --pk1-root "${CMAKE_SOURCE_DIR}/analysis/assets-pk1"
            --pk2-root "${CMAKE_SOURCE_DIR}/analysis/assets-pk2"
            --icon-source "${PK3_ASSET_ROOT}/pict/129.png"
            --output-rc "${PK3_GENERATED_RC}"
            --output-icon "${PK3_GENERATED_ICON}"
            --output-header "${PK3_GENERATED_CATALOG}"
    DEPENDS
            "${CMAKE_SOURCE_DIR}/tools/generate_windows_resources.py"
            "${PK3_ASSET_ROOT}/manifest.json"
            "${PK3_ASSET_ROOT}/failures.json"
            "${CMAKE_SOURCE_DIR}/analysis/assets-pk1/manifest.json"
            "${CMAKE_SOURCE_DIR}/analysis/assets-pk1/failures.json"
            "${CMAKE_SOURCE_DIR}/analysis/assets-pk2/asset-manifest.json"
    VERBATIM
)

add_executable(PongKombatTrilogy WIN32
    src/main.cpp
    src/app.cpp
    src/app.hpp
    src/collection.cpp
    src/collection.hpp
    src/audio.cpp
    src/audio.hpp
    src/game.cpp
    src/game.hpp
    src/game_data.cpp
    src/game_data.hpp
    src/legacy_game.cpp
    src/legacy_game.hpp
    src/renderer.cpp
    src/renderer.hpp
    src/resource_ids.hpp
    "${PK3_GENERATED_RC}"
    "${PK3_GENERATED_CATALOG}"
)

target_include_directories(PongKombatTrilogy PRIVATE
    $<$<COMPILE_LANGUAGE:CXX>:${PK3_GENERATED_DIR}>
)

target_compile_definitions(PongKombatTrilogy PRIVATE
    UNICODE
    _UNICODE
    WIN32_LEAN_AND_MEAN
    NOMINMAX
    PK3_VERSION=L"2.1"
)

target_compile_options(PongKombatTrilogy PRIVATE
    $<$<CXX_COMPILER_ID:GNU>:-Wall;-Wextra;-Wpedantic;-Wno-unused-parameter>
)

target_link_libraries(PongKombatTrilogy PRIVATE
    windowscodecs
    ole32
    uuid
    winmm
    gdi32
    user32
    shell32
)

if(MINGW)
    target_link_options(PongKombatTrilogy PRIVATE
        -static
        -static-libgcc
        -static-libstdc++
        -mwindows
        -municode
    )
endif()

set_target_properties(PongKombatTrilogy PROPERTIES
    OUTPUT_NAME "Pong Kombat Trilogy"
)
