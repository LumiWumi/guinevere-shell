import Quickshell
import QtQuick
import QtMultimedia
import QtQuick.Controls
import Quickshell.Wayland
import qs.components
import qs.services

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
        highlight: true
        iconColor: "#9f835e"
        backgroundSource: Quickshell.shellDir + "/resources/BG.png"
        backgroundPadding: 1
        backgroundColor: hovered ? Qt.lighter("#9f835e") : "#9f835e"
        onClicked: {
            Lock.lock();
            shutdownMenu.visible = false;
        }
    }

    ShutdownMenuButton {
        x: (Screen.width) / 2 - (width / 2)
        y: Screen.height * 2 / 3
        iconSource: Quickshell.shellDir + "/resources/shutdownIcon.svg"

        onClicked: Quickshell.execDetached(["shutdown", "-h", "now"])
    }

    ShutdownMenuButton {
        x: (Screen.width * 2 / 3) - (width / 2)
        y: Screen.height * 2 / 3
        iconSource: Quickshell.shellDir + "/resources/restartIcon.svg"

        onClicked: Quickshell.execDetached(["reboot"])
    }

    Rectangle {
        id: iconCircle
        x: (Screen.width / 2) - (width / 2)
        y: (Screen.height / 3) - (height / 2)
        height: 400
        width: 400
        radius: 400
        color: "#4c0004"
        border.color: "#9f835e"

        Image {
            anchors.centerIn: parent
            fillMode: Image.Stretch
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
