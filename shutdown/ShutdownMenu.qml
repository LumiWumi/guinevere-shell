import Quickshell
import QtQuick
import QtQuick.Controls
import Quickshell.Wayland

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
    x: (Screen.width / 2) - (width / 2) - 405; y: (Screen.height / 3) - (height / 2)
    source: "resources/leftWing.png"
  }
  Image {
    x: (Screen.width / 2) - (width / 2) + 405; y: (Screen.height / 3) - (height / 2)
    source: "resources/rightWing.png"
  }
  Image {
    x: (Screen.width / 2); y: (Screen.height / 3) - 50
    width: 400; height: 400
    rotation: 45
    source: "resources/tail.png"
  }

  Rectangle {
    // background for buttons
    x: (Screen.width / 3) - 35; y: Screen.height * 2 / 3 - 5
    width: (Screen.width / 3) + 70
    height: 70
    radius: 100
    color: "#4c0004"
    border.color: "#9f835e"

    Rectangle {
      x: 70; y: 30
      width: Screen.width / 6 - 70
      radius: 100
      height: 10
      color: "#7cb13243"
    }

    Rectangle {
      x: 70 + Screen.width / 6; y: 30
      width: Screen.width / 6 - 70
      radius: 100
      height: 10
      color: "#7cb13243"
    }
  }

  ShutdownMenuButton{
    x: (Screen.width / 3) - (width / 2); y: Screen.height * 2 / 3
    iconSource: "resources/lockIcon.svg"

    onClicked: {
      shutdownMenu.visible = false
      Quickshell.execDetached(["hyprlock"])
    }
  }

  ShutdownMenuButton{
    x: (Screen.width) / 2 - (width / 2); y: Screen.height * 2 / 3
    iconSource: "resources/shutdownIcon.svg"

    onClicked: Quickshell.execDetached(["shutdown", "-h", "now"])
  }

  ShutdownMenuButton{
    x: (Screen.width * 2 / 3) - (width / 2); y: Screen.height * 2 / 3
    iconSource: "resources/restartIcon.svg"

    onClicked: Quickshell.execDetached(["reboot"])
  }


  Rectangle {
    id: iconCircle
    x: (Screen.width / 2) - (width / 2); y: (Screen.height / 3) - (height / 2)
    height: 400; width: 400; radius: 400
    color: "#4c0004"
    border.color: "#9f835e"

    Image {
      anchors.centerIn: parent
      fillMode: Image.Stretch
      source: "resources/decorationIcon.png"
      width: 390; height: 390
    }
  }

  Item {
    anchors.fill: parent
    focus: true
    Keys.onEscapePressed: {
      shutdownMenu.visible = false
    }
  }

}
