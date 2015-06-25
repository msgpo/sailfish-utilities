import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Silica.theme 1.0
import Sailfish.Utilities 1.0

ActionItem {
    //% "Restart network"
    actionName: qsTrId("sailfish-tools-me-restart-network")
    deviceLockRequired: false
    //% "Restart network subsystem if anything wrong happened with "
    //% "connectivity (WLAN, mobile data)."
    //% "Ignore the warning asking you to restart device because "
    //% "SIM is removed. This is the side effect of the network "
    //% "stack beeing restarted"
    description: qsTrId("sailfish-utilities-me-restart-network-desc")

    function action(on_reply, on_error) {
        tools.request("restartNetwork", {}, {
            on_reply: on_reply, on_error: on_error
        });
    }
}