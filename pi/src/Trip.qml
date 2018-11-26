import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.settings 1.0

import "Theme.js" as Theme;

ScrollView {
    id: tripScroll
    objectName: "TripPage"
    clip: true
    anchors.fill: parent
    contentWidth: -1 // prevent horizontal scroll

    function updateOdo() {
        var t = new Date().getTime();

        if(!tripCol.firstupdateodo) {
            tripSettings.all_odo += applicationData.speed * (t - tripSettings.all_lastUpdate) / 3600000;
            tripSettings.odo += applicationData.speed * (t - tripSettings.lastUpdate) / 3600000;

            tripSettings.all_cons = (tripSettings.all_cons * tripSettings.all_consCounter + applicationData.airFlow) / (++tripSettings.all_consCounter);
            tripSettings.cons = (tripSettings.cons * tripSettings.consCounter + applicationData.airFlow) / (++tripSettings.consCounter);
        }

        tripSettings.all_lastUpdate = t;
        tripSettings.lastUpdate = t;
        tripCol.firstupdateodo = false;
    }

    Column {
        id: tripCol
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 10
        padding: 10

        property bool firstupdateodo: true

        Settings {
            id: tripSettings
            property real all_odo: 284000
            property real all_cons: 0
            property int all_consCounter: 0
            property var all_lastUpdate: 0
            property real odo: 0
            property real cons: 0
            property int consCounter: 0
            property var lastUpdate: 0
        }

        Text {
            color: Theme.txColor
            text: "All time statistics"
            font.pixelSize: 24
        }

        Row {
            Text {
                width: 150
                color: Theme.txColor
                text: "Odo"
            }
            Text {
                width: 150
                color: Theme.txColor
                text: Number(tripSettings.all_odo).toFixed(1)
            }
            Text {
                color: Theme.txColor
                text: "km"
            }
        }

        Row {
            Text {
                width: 150
                color: Theme.txColor
                text: "Overall cons."
            }
            Text {
                width: 150
                color: Theme.txColor
                text: Number(tripSettings.all_cons).toFixed(2)
            }
            Text {
                color: Theme.txColor
                text: "g/s"
            }
        }

        Item {
            width: 50
            height: 50
        }

        Text {
            color: Theme.txColor
            text: "Trip statistics"
            font.pixelSize: 24
        }

        Row {
            Text {
                width: 150
                color: Theme.txColor
                text: "Odo"
            }
            Text {
                width: 150
                color: Theme.txColor
                text: Number(tripSettings.odo).toFixed(1)
            }
            Text {
                color: Theme.txColor
                text: "km"
            }
        }

        Row {
            Text {
                width: 150
                color: Theme.txColor
                text: "Overall cons."
            }
            Text {
                width: 150
                color: Theme.txColor
                text: Number(tripSettings.cons).toFixed(2)
            }
            Text {
                color: Theme.txColor
                text: "g/s"
            }
        }

        Item {
            width: 50
            height: 50
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Reset trip"

            onClicked: {
                tripSettings.odo = 0;
                tripSettings.cons = 0;
                tripSettings.consCounter = 0;
            }
        }
    }
}
