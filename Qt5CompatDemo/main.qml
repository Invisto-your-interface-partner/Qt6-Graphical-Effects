import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects

Window {
    id: mainWindow

    width: 888
    height: 600
    visible: true
    title: qsTr("Qt5 Compat demo")

    Row {
        Image {
            id: raveel
            source: "qrc:/Qt5CompatDemo/images/raveel_tafeltje_met_rode_vlek_1952.jpg"
        }

        FastBlur {
            width: 444
            height: 600

            source: raveel
            radius: 32
        }
    }
}
