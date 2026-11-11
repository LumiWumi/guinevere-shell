import Quickshell
import QtQuick
import QtQuick.Controls

Button {
    id: button

    property string iconSource: ""
    property string borderSource: ""
    property color backgroundColor: "#FFFFFF"
    property string backgroundSource: ""
    property color iconColor: "#000000"
    property bool highlight: true
    property int backgroundPadding: 0
    property int iconWidth: width
    property int iconHeight: height

    width: 60
    height: 60

    padding: 10

    background: Rectangle {
        radius: button.width / 2
        color: button.backgroundColor

        Image {
            x: 0 + button.backgroundPadding
            y: 0 + button.backgroundPadding

            width: button.width - 2 * button.backgroundPadding
            height: button.height - 2 * button.backgroundPadding

            source: button.backgroundSource
        }
    }

    Image {
        id: border
        z: -1
        anchors.centerIn: parent
        width: button.width * 2
        height: button.height * 2
        source: button.borderSource
    }

    icon {
        width: button.iconWidth
        height: button.iconHeight

        source: button.iconSource
        color: highlight ? (button.hovered ? Qt.lighter(iconColor, 1.3) : iconColor) : iconColor
    }
}
