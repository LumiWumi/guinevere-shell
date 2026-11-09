import Quickshell
import QtQuick
import QtQuick.Controls

Button {
    id: shutdownMenuButton
    focusPolicy: Qt.NoFocus

    required property string iconSource

    Image {
        source: Quickshell.shellDir + "/resources/buttonBorder.png"
        width: 120
        height: 120
        x: -30
        y: -30
        z: -1
    }

    icon {
        source: iconSource
        width: 100
        height: 100
        color: shutdownMenuButton.hovered ? "#b49a77" : "#9f835e"
    }

    padding: 10

    height: 60
    width: 60

    background: Rectangle {
        color: shutdownMenuButton.hovered ? "#b49a77" : "#9f835e"
        radius: 30
        Image {
            x: 1
            y: 1
            width: 58
            height: 58
            source: Quickshell.shellDir + "/resources/BG.png"
        }
    }
}
