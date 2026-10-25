import Quickshell
import QtQuick
import QtQuick.Controls

Button {
  id: shutdownMenuButton
  focusPolicy: Qt.NoFocus

  required property color backgroundColor
  required property string iconSource

  icon {
    source: iconSource
    width: 100
    height: 100
    color: "transparent"
  }

  padding: 10

  height: 60     
  width: 60


  background: Rectangle {
    color: shutdownMenuButton.hovered ? "#b49a77" : "#9f835e"
    radius: 100
  }
}


