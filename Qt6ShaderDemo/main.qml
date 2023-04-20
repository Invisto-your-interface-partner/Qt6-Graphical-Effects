import QtQuick
import QtQuick.Controls

Window {
    id: mainWindow

    width: 888
    height: 600
    visible: true
    title: qsTr("Qt6 Shader demo")

    Row {
        Image {
            id: raveel
            source: "qrc:/Qt6ShaderDemo/images/raveel_tafeltje_met_rode_vlek_1952.jpg"
        }

        ShaderEffect {
            property var src: raveel
            property int radius: 16
            property var pixelStep: Qt.vector2d(1/src.width, 1/src.height)
            width: 444
            height: 600
            fragmentShader: "qrc:/shaders/boxblur.frag.qsb"
        }
    }
}
