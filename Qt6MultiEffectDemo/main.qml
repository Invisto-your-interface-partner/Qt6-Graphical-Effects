import QtQuick
import QtQuick.Controls
import QtQuick.Effects

Window {
    id: mainWindow

    width: 888
    height: 600
    visible: true
    title: qsTr("Qt6 MultiEffect demo")

    Row {
        Image {
            id: raveel
            source: "qrc:/Qt6MultiEffectDemo/images/raveel_tafeltje_met_rode_vlek_1952.jpg"
        }

        MultiEffect {
            source: raveel
            width: 444
            height: 600
            blurEnabled: true
            blurMax: 32
            blur: 1.0
        }
    }
}
