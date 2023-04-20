cmake_minimum_required(VERSION 3.16)

project(Qt5CompatDemo VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)
find_package(Qt6 COMPONENTS ShaderTools)

qt_add_executable(appQt5CompatDemo
    main.cpp
)

qt_add_qml_module(appQt5CompatDemo
    URI Qt5CompatDemo
    VERSION 1.0
    QML_FILES
        main.qml
    RESOURCES
        images/raveel_tafeltje_met_rode_vlek_1952.jpg
)

target_link_libraries(appQt5CompatDemo
    PRIVATE Qt6::Quick)

install(TARGETS appQt5CompatDemo
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

