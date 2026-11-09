import Quickshell
import QtQuick

Scope {
    id: exclusiveZone

    PanelWindow {
        id: topExclusive

        implicitHeight: 10

        mask: Region {}
        color: "transparent"

        anchors {
            top: true
            left: true
            right: true
        }
    }

    PanelWindow {
        id: rightExclusive

        implicitWidth: 10

        mask: Region {}
        color: "transparent"

        anchors {
            top: true
            right: true
            bottom: true
        }
    }

    PanelWindow {
        id: bottomExclusive

        implicitHeight: 10

        mask: Region {}
        color: "transparent"

        anchors {
            right: true
            left: true
            bottom: true
        }
    }

    PanelWindow {
        id: leftExclusive

        implicitWidth: 40

        mask: Region {}
        color: "transparent"

        anchors {
            top: true
            left: true
            bottom: true
        }
    }
}
