pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io

Singleton {

    function lock() {
        execLock.exec();
    }

    Process {
        id: execLock
        running: false

        command: ["hyprlock"]
    }
}
