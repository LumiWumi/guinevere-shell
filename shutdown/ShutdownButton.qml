import Quickshell
import QtQuick
import QtQuick.Controls

Item {
  // id
  id: shutdown
  x: 5
  y: 1045
  height: 30
  width:  30

  ShutdownMenu{ id: shutdownMenu }

  // Internal button object that handles the shutdown menu
  Button {
    id: shutdownButton
    onClicked: shutdown.openShutdownMenu()
    height: shutdown.height
    width: shutdown.width

    // The background theme
    background: Rectangle { 
      radius: 100 
      color: shutdownButton.hovered ? "#cb5968" : "#b13243"

      // Image/Icon for the button. Alter as needed
      Image {
        anchors.centerIn: parent
        width: 40
        height: 30
      }
    }
  }
  
  // Initilize the shutdown menu
  function openShutdownMenu() {
    shutdownMenu.visible = true
  }

}
