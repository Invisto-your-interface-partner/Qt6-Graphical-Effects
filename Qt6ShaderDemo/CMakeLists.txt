cmake_minimum_required(VERSION 3.16)

project(Qt6ShaderDemo VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)
find_package(Qt6 COMPONENTS ShaderTools)

qt_add_executable(appQt6ShaderDemo
    main.cpp
)

qt_add_qml_module(appQt6ShaderDemo
    URI Qt6ShaderDemo
    VERSION 1.0
    QML_FILES
        main.qml
    RESOURCES
        images/raveel_tafeltje_met_rode_vlek_1952.jpg
)

qt6_add_shaders(appQt6ShaderDemo "shaders"
    BATCHABLE
    PRECOMPILE
    OPTIMIZED
    PREFIX
        "/shaders"
    FILES
        "boxblur.frag"
)

target_link_libraries(appQt6ShaderDemo
    PRIVATE Qt6::Quick)

install(TARGETS appQt6ShaderDemo
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

