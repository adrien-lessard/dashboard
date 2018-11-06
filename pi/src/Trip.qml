import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.settings 1.0

Column {
    id: tripCol
    objectName: "TripPage"
    anchors.left: parent.left
    anchors.right: parent.right
    spacing: 10
    padding: 10

    property bool firstupdateodo: true

    function updateOdo() {
        var t = new Date().getTime();

        if(!tripCol.firstupdateodo) {
            allTimeTripSettings.odo += applicationData.speed * (t - allTimeTripSettings.lastUpdate) / 3600000;
            tripSettings.odo += applicationData.speed * (t - tripSettings.lastUpdate) / 3600000;

            allTimeTripSettings.cons = (allTimeTripSettings.cons * allTimeTripSettings.consCounter + applicationData.airFlow) / (++allTimeTripSettings.consCounter);
            tripSettings.cons = (tripSettings.cons * tripSettings.consCounter + applicationData.airFlow) / (++tripSettings.consCounter);
        }

        allTimeTripSettings.lastUpdate = t;
        tripSettings.lastUpdate = t;
        tripCol.firstupdateodo = false;
    }

    Settings {
        id: allTimeTripSettings
        property real odo: 284000
        property real cons: 0
        property int consCounter: 0
        property var lastUpdate: 0
    }

    Settings {
        id: tripSettings
        property real odo: 0
        property real cons: 0
        property int consCounter: 0
        property var lastUpdate: 0
    }

    Text {
        color: "#c4c4c4"
        text: "All time statistics"
        font.pixelSize: 24
    }

    Row {
        Text {
            width: 150
            color: "#c4c4c4"
            text: "Odo"
        }
        Text {
            width: 150
            color: "#c4c4c4"
            text: Number(allTimeTripSettings.odo).toFixed(0)
        }
        Text {
            color: "#c4c4c4"
            text: "km"
        }
    }

    Row {
        Text {
            width: 150
            color: "#c4c4c4"
            text: "Overall cons."
        }
        Text {
            width: 150
            color: "#c4c4c4"
            text: Number(allTimeTripSettings.cons).toFixed(2)
        }
        Text {
            color: "#c4c4c4"
            text: "g/s"
        }
    }

    Item {
        width: 50
        height: 50
    }

    Text {
        color: "#c4c4c4"
        text: "Trip statistics"
        font.pixelSize: 24
    }

    Row {
        Text {
            width: 150
            color: "#c4c4c4"
            text: "Odo"
        }
        Text {
            width: 150
            color: "#c4c4c4"
            text: Number(tripSettings.odo).toFixed(0)
        }
        Text {
            color: "#c4c4c4"
            text: "km"
        }
    }

    Row {
        Text {
            width: 150
            color: "#c4c4c4"
            text: "Overall cons."
        }
        Text {
            width: 150
            color: "#c4c4c4"
            text: Number(tripSettings.cons).toFixed(2)
        }
        Text {
            color: "#c4c4c4"
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
