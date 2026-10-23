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

  Button {
    id: lockButton
    focusPolicy: Qt.NoFocus

    height: 60     
    width: 60
    x: 890; y: 540

    onClicked: {
      shutdownMenu.visible = false
      Quickshell.execDetached(["hyprlock"])
    }

    background: Rectangle {

      color: "#b13234"
      radius: 100
    }
  }

  Button {
    id: shutdownButton
    focusPolicy: Qt.NoFocus

    height: 60     
    width: 60
    x: 980; y: 540

    onClicked: Quickshell.execDetached(["shutdown", "-h", "now"])

    background: Rectangle {
      color: "#b13234"
      radius: 100
    }
  }

  Button {
    id: rebootButton
    focusPolicy: Qt.NoFocus

    height: 60     
    width: 60
    x: 1070; y: 540

    onClicked: Quickshell.execDetached(["reboot"])

    background: Rectangle {

      color: "#b13234"
      radius: 100
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
