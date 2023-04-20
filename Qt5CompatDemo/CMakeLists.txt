cmake_minimum_required(VERSION 3.16)

project(PatientMonitor VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)
find_package(Qt6 COMPONENTS ShaderTools)

qt_add_executable(appPatientMonitor
    main.cpp
)

qt_add_qml_module(appPatientMonitor
    URI PatientMonitor
    VERSION 1.0
    QML_FILES
        main.qml
        overview.qml
        Header.qml
        EditPatient.qml
        Keyboard.qml
        KeyboardButton.qml
        SingleLabel.qml
        DoubleCharacters.qml
        SingleIcon.qml
        EditText.qml
        GraphContainer.qml
        PatientInfoOverView.qml
        PatientInfoField.qml
    RESOURCES
        images/hr_wave_background.png
        images/pleth_wave_background.png
        images/resp_wave_background.png
        images/logo.svg
        images/person_icon.svg
        images/battery_icon.svg
        images/backward_icon.svg
        images/captial_icon.svg
        images/draw_icon.svg
        images/paste_icon.svg
        images/bar_icon.svg
        images/check_icon.svg
        images/forward_icon.svg
        images/picture_icon.svg
        images/hr_vector.svg
        images/emoji_icon.svg
        images/mic_icon.svg
        images/keyboard_icon.svg
        images/semi_transparent_bg.svg
        images/pleth_vector.svg
        images/resp_vector.svg
        images/avatars.svg
        images/pen_icon.svg
        images/bell_notification_icon.svg


        fonts/Inter-Black.ttf
        fonts/Inter-ExtraLight.ttf
        fonts/Inter-Regular.ttf
        fonts/Inter-Bold.ttf
        fonts/Inter-Light.ttf
        fonts/Inter-SemiBold.ttf
        fonts/Inter-ExtraBold.ttf
        fonts/Inter-Medium.ttf
        fonts/Inter-Thin.ttf
)

qt6_add_shaders(appPatientMonitor "shaders"
    BATCHABLE
    PRECOMPILE
    OPTIMIZED
    PREFIX
        "/shaders"
    FILES
        "boxblur.frag"
)

set_target_properties(appPatientMonitor PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.patientmonitor.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appPatientMonitor
    PRIVATE Qt6::Quick)

install(TARGETS appPatientMonitor
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

