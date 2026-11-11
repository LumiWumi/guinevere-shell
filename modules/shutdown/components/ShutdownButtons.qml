import QtQuick
import Quickshell
import qs.theme
import qs.components
import qs.services

Item {
    id: shutdownMenu
    required property ShutdownMenu menu

    IconButton {
        x: (Screen.width / 3) - (width / 2)
        y: Screen.height * 2 / 3

        iconSource: Quickshell.shellDir + "/resources/lockIcon.svg"
        borderSource: Quickshell.shellDir + "/resources/buttonBorder.png"
        backgroundSource: Quickshell.shellDir + "/resources/BG.png"

        iconColor: Colorscheme.gold
        backgroundColor: hovered ? Qt.lighter(Colorscheme.gold) : Colorscheme.gold

        onClicked: {
            Session.lock();
            shutdownMenu.menu.visible = false;
        }
    }

    IconButton {
        x: (Screen.width) / 2 - (width / 2)
        y: Screen.height * 2 / 3

        iconSource: Quickshell.shellDir + "/resources/shutdownIcon.svg"
        borderSource: Quickshell.shellDir + "/resources/buttonBorder.png"
        backgroundSource: Quickshell.shellDir + "/resources/BG.png"

        iconColor: Colorscheme.gold
        backgroundColor: hovered ? Qt.lighter(Colorscheme.gold) : Colorscheme.gold
        onClicked: {
            Session.shutdown();
        }
    }

    IconButton {
        x: (Screen.width * 2 / 3) - (width / 2)
        y: Screen.height * 2 / 3

        iconSource: Quickshell.shellDir + "/resources/restartIcon.svg"
        borderSource: Quickshell.shellDir + "/resources/buttonBorder.png"
        backgroundSource: Quickshell.shellDir + "/resources/BG.png"

        iconColor: Colorscheme.gold
        backgroundColor: hovered ? Qt.lighter(Colorscheme.gold) : Colorscheme.gold
        onClicked: {
            Session.reboot();
        }
    }
}
