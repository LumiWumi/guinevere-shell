pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io

Singleton {

    function lock() {
        execLock.running = true;
    }

    function shutdown() {
        execShutdown.running = true;
    }

    function reboot() {
        execReboot.running = true;
    }

    Process {
        id: execLock
        running: false

        command: ["hyprlock"]
    }

    Process {
        id: execReboot
        running: false

        command: ["reboot"]
    }

    Process {
        id: execShutdown
        running: false

        command: ["shutdown", "-h", "now"]
    }
}
