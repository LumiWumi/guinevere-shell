import Quickshell
import QtQuick
import Quickshell.Wayland
import qs.components
import qs.services
import qs.theme

PanelWindow {
    id: shutdownMenu

    visible: false
    WlrLayershell.keyboardFocus: visible ? WlrKeyboardFocus.Exclusive : WlrKeyboardFocus.None
    exclusionMode: ExclusionMode.Ignore

    color: "#cc000000"

    anchors {
        left: true
        right: true
        top: true
        bottom: true
    }

    Image {
        x: (Screen.width / 2) - (width / 2) - 205
        y: (Screen.height / 3) - (height / 2)
        source: Quickshell.shellDir + "/resources/leftWing.png"
    }
    Image {
        x: (Screen.width / 2) - (width / 2) + 205
        y: (Screen.height / 3) - (height / 2)
        source: Quickshell.shellDir + "/resources/rightWing.png"
    }
    Image {
        x: (Screen.width / 3) - 400
        y: Screen.height * 2 / 3 - 87
        rotation: 180
        width: 1200
        height: 250
        source: Quickshell.shellDir + "/resources/SwordPNG.png"
    }

    IconButton {
        x: (Screen.width / 3) - (width / 2)
        y: Screen.height * 2 / 3

        iconSource: Quickshell.shellDir + "/resources/lockIcon.svg"
        borderSource: Quickshell.shellDir + "/resources/buttonBorder.png"
        backgroundSource: Quickshell.shellDir + "/resources/BG.png"

        iconColor: Colorscheme.gold
        backgroundColor: hovered ? Qt.lighter(Colorscheme.gold) : Colorscheme.gold

        onClicked: {
            Session.lock();
            shutdownMenu.visible = false;
        }
    }

    IconButton {
        x: (Screen.width) / 2 - (width / 2)
        y: Screen.height * 2 / 3

        iconSource: Quickshell.shellDir + "/resources/shutdownIcon.svg"
        borderSource: Quickshell.shellDir + "/resources/buttonBorder.png"
        backgroundSource: Quickshell.shellDir + "/resources/BG.png"

        iconColor: Colorscheme.gold
        backgroundColor: hovered ? Qt.lighter(Colorscheme.gold) : Colorscheme.gold
        onClicked: {
            Session.shutdown();
        }
    }

    IconButton {
        x: (Screen.width * 2 / 3) - (width / 2)
        y: Screen.height * 2 / 3

        iconSource: Quickshell.shellDir + "/resources/restartIcon.svg"
        borderSource: Quickshell.shellDir + "/resources/buttonBorder.png"
        backgroundSource: Quickshell.shellDir + "/resources/BG.png"

        iconColor: Colorscheme.gold
        backgroundColor: hovered ? Qt.lighter(Colorscheme.gold) : Colorscheme.gold
        onClicked: {
            Session.reboot();
        }
    }

    Rectangle {
        id: iconCircle
        x: (Screen.width / 2) - (width / 2)
        y: (Screen.height / 3) - (height / 2)
        height: 400
        width: 400
        radius: 400
        color: Colorscheme.maroon
        border.color: Colorscheme.gold

        Image {
            anchors.centerIn: parent
            source: Quickshell.shellDir + "/resources/decorationIcon.png"
            width: 390
            height: 390
        }
    }

    Item {
        anchors.fill: parent
        focus: true
        Keys.onEscapePressed: {
            shutdownMenu.visible = false;
        }
    }
}
