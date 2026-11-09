import Quickshell
import QtQuick

PanelWindow {
    color: "transparent"

    anchors {
        left: true
        right: true
        top: true
        bottom: true
    }

    exclusiveZone: ExclusionMode.Ignore

    mask: Region {
        Region {
            x: 0
            y: 0
            width: 40
            height: Screen.height
        }
        Region {
            x: 0
            y: 0
            width: Screen.width
            height: 10
        }
        Region {
            x: Screen.width
            y: 0
            width: 10
            height: Screen.height
        }
        Region {
            x: 0
            y: Screen.height
            width: Screen.width
            height: 10
        }
    }

    ScreenBorder {}
    ShutdownButton {}
}
