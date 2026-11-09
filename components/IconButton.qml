import Quickshell
import QtQuick
import QtQuick.Controls

Button {
    id: button

    required property string iconSource
    property string borderSource
    required property var buttonBackground
    required property color iconColor
    required property bool highlight

    width: 60
    height: 60

    padding: 10

    background: buttonBackground

    Image {
        id: border
        anchors.centerIn: parent
        source: button.borderSource
        anchors.fill: parent
    }

    icon {
        source: button.iconSource
        color: highlight ? (button.hovered ? iconColor : Qt.lighter(iconColor, 1.3)) : iconColor
    }
}
