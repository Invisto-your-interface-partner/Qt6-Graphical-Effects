cmake_minimum_required(VERSION 3.16)

project(Qt6MultiEffectDemo VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 COMPONENTS Quick REQUIRED)
find_package(Qt6 COMPONENTS ShaderTools)

qt_add_executable(appQt6MultiEffectDemo
    main.cpp
)

qt_add_qml_module(appQt6MultiEffectDemo
    URI Qt6MultiEffectDemo
    VERSION 1.0
    QML_FILES
        main.qml
    RESOURCES
        images/raveel_tafeltje_met_rode_vlek_1952.jpg
)

target_link_libraries(appQt6MultiEffectDemo
    PRIVATE Qt6::Quick)

install(TARGETS appQt6MultiEffectDemo
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

