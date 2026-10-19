import Quickshell
import QtQuick
import "./bar"


// Overlaying/root window - Anchors to all sides of the screen
PanelWindow {
  // set id of root window
  id: root
  // set anchors
  anchors {
    top: true
    left: true
    right: true
    bottom: true
  }
  // transparency as this is a container
  color: "transparent"
  // input mask makes it so that only set regions can be clicked
  // WIP: Need to make it so that it pull from monitor settings
  mask: Region {
    Region { x: 0; y: 0; width: 1920; height: 20 }
    Region { x: 0; y: 1060; width: 1920; height: 20 }
    Region { x: 0; y: 0; width: 40; height: 1080 }
    Region { x: 1900; y: 0; width: 20; height: 1080 }
  }

  Bar{}
}
