import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtMultimedia 5.8
import Qt.labs.settings 1.0

Window {

    signal checkErrorCodes()
    signal clearErrorCodes()
    signal checkForUpdates()
    signal killApplication()

    function checkErrorCodesDone(text) {
        console.log("checkEngineDone: " + text)
        errorCodeResponseText.text = text
        errorCodeResponseText.visible = true
        
        if(text != "") {
            clearErrorCodesButton.visible = true
        }
    }

    function clearErrorCodesDone(text) {
        console.log("clearEngineDone: " + text)
        errorCodeResponseText.text = text
        errorCodeResponseText.visible = true
    }

    id: window
    visible: true
    width: 800
    height: 480
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width
    visibility: Window.FullScreen

    Shortcut {
        sequence: "Escape"
        onActivated: visibility = Window.Windowed
    }

    color: "#363636"
    title: qsTr("Dashboard")

    Column {
        id: column
        width: 300
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.bottom: parent.bottom

        Text {
            id: speed
            height: 120
            color: "#c4c4c4"
            text: applicationData.speed
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.right: parent.right
            anchors.left: parent.left
            font.pixelSize: 72
        }

        CircularGauge {
            id: rpm
            height: 240
            stepSize: 0
            value: applicationData.rpm / 1000
            maximumValue: 6
            anchors.right: parent.right
            anchors.left: parent.left
            
            Behavior on value{
                NumberAnimation { duration: 230; easing.type: Easing.Linear }
            }

            style: CircularGaugeStyle {
                tickmarkStepSize: 1
                background: Canvas {
                    Text {
                        id: gearText
                        font.pixelSize: 24
                        text: "2"
                        color: "#c4c4c4"
                        horizontalAlignment: Text.AlignRight
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.verticalCenter
                        anchors.topMargin: 40
                    }
                }
            }
        }

        Text {
            id: cons
            height: 120
            color: "#c4c4c4"
            text: applicationData.speed == 0.0 ? (applicationData.airFlow * 3600.0 / (17.4 * 730.0)).toFixed(2) + " L/h" : (applicationData.airFlow * 3600.0 * 100.0 / (17.4 * 730.0 * applicationData.speed)).toFixed(2) + " L/100km"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.right: parent.right
            anchors.left: parent.left
            font.pixelSize: 36
        }

    }

    Item {
        id: item1
        x: 300
        y: 0
        width: 500
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top

        TabBar {
            id: tabBar
            x: 0
            y: 0
            currentIndex: 0
            anchors.left: parent.left
            anchors.right: parent.right

            TabButton {
                id: music
                text: qsTr("Music")
            }

            TabButton {
                id: trip
                text: qsTr("Trip")
            }

            TabButton {
                id: carstatus
                text: "Status"
            }
        }

        StackLayout {
            id: stackLayout
            x: 0
            y: 40
            anchors.top: parent.top
            anchors.topMargin: 40
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            currentIndex: tabBar.currentIndex

            Item {
                Layout.fillHeight: true
                Layout.fillWidth: true

                Text {
                    color: "#c4c4c4"
                    text: playMusic.metaData.title ? playMusic.metaData.title : ""
                    horizontalAlignment: Text.AlignHCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    padding: 10
                }

                Audio {
                    id: playMusic
                    volume: volumeControl.text / 100
                    playlist: Playlist { }
                }

                Row {
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    height: 50
                    padding: 10

                    Item {
                        id: pauseIcon
                        width: 40
                        height: 30
                        visible: true

                        Image {
                            sourceSize.height: 20
                            sourceSize.width: 20
                            source: "../img/pause.svg"
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            MouseArea {
                                anchors.fill: parent
                                onClicked: { playMusic.pause(); playIcon.visible = true; pauseIcon.visible = false; }
                            }
                        }
                    }

                    Item {
                        id: playIcon
                        width: 40
                        height: 30
                        visible: false
                    
                        Image {
                            sourceSize.height: 20
                            sourceSize.width: 20
                            source: "../img/playFull.svg"
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            MouseArea {
                                anchors.fill: parent
                                onClicked: { playMusic.play(); playIcon.visible = false; pauseIcon.visible = true; }
                            }
                        }
                    }

                    Text {
                        width: 20
                        color: "#c4c4c4"
                        font.pixelSize: 26
                        padding: -2
                        text: "<"
                        horizontalAlignment: Text.AlignHCenter
                        MouseArea {
                            anchors.fill: parent
                            onClicked: { playMusic.playlist.previous(); }
                        }
                    }
                    
                    Column {
                        padding:12

                        ProgressBar {
                            width: 150
                            height: 6
                            id: progressBar
                            value: playMusic.position / playMusic.duration
                            background: Rectangle {
                                height: parent.height
                                color: "#c4c4c4"
                                radius: 3
                            }

                            contentItem: Rectangle {
                                width: parent.value * parent.width
                                height: parent.height
                                radius: 3
                                color: "#17a81a"
                            }
                        }
                    }

                    Text {
                        width: 20
                        color: "#c4c4c4"
                        font.pixelSize: 26
                        padding: -2
                        text: ">"
                        horizontalAlignment: Text.AlignHCenter
                        MouseArea {
                            anchors.fill: parent
                            onClicked: { playMusic.playlist.next(); }
                        }
                    }

                    Item {
                        width: 50
                        height: 30
                    }

                    Timer {
                        id: volumeControlIncrTimer
                        interval: 100;
                        running: false;
                        repeat: true;
                        onTriggered: volumeControl.incr()
                    }

                    Timer {
                        id: volumeControlDecrTimer
                        interval: 100;
                        running: false;
                        repeat: true;
                        onTriggered: volumeControl.decr()
                    }

                    Text {
                        width: 40
                        color: "#c4c4c4"
                        font.pixelSize: 26
                        padding: -2
                        text: "-"
                        horizontalAlignment: Text.AlignHCenter
                        MouseArea {
                            anchors.fill: parent
                            onClicked: { volumeControl.decr(); }
                            onPressAndHold: { volumeControlDecrTimer.running = true; }
                            onReleased: { volumeControlDecrTimer.running = false; }
                        }
                    }

                    Text {
                        id: volumeControl
                        width: 40
                        color: "#c4c4c4"
                        font.pixelSize: 26
                        padding: -2
                        text: volumeControlSettings.volume
                        horizontalAlignment: Text.AlignHCenter

                        Settings {
                            id: volumeControlSettings
                            property string volume: "10"
                        }

                        function incr() {
                            var newVal = Number(volumeControl.text) + 1;
                            if(newVal <= 100) {
                                volumeControl.text = newVal;
                                volumeControlSettings.volume = newVal;
                            }
                        }

                        function decr() {
                            var newVal = Number(volumeControl.text) - 1;
                            if(newVal >= 0) {
                                volumeControl.text = newVal;
                                volumeControlSettings.volume = newVal;
                            }
                        }
                    }

                    Text {
                        width: 40
                        color: "#c4c4c4"
                        font.pixelSize: 26
                        padding: -2
                        text: "+"
                        horizontalAlignment: Text.AlignHCenter
                        MouseArea {
                            anchors.fill: parent
                            onClicked: { volumeControl.incr(); }
                            onPressAndHold: { volumeControlIncrTimer.running = true; }
                            onReleased: { volumeControlIncrTimer.running = false; }
                        }
                    }
                    
                }

                ScrollView {
                    id: musicScroll
                    clip: true
                    anchors.fill: parent
                    anchors.topMargin: 70

                    MusicItems { }
                }
            }

            Item {
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Item {
                Layout.fillHeight: true
                Layout.fillWidth: true

                ScrollView {
                    id: statusScroll
                    clip: true
                    anchors.fill: parent

                    Column {
                        id: statusColumn
                        width: 500
                        spacing: 10
                        padding: 10

                        Text {
                            id: checkCodeTitle
                            color: "#c4c4c4"
                            text: qsTr("Engine status")
                            visible: true
                            font.pixelSize: 16
                        }

                        Button {
                            id: stopButton
                            text: qsTr("STOP")
                            visible: true
                            anchors.horizontalCenter: parent.horizontalCenter
                            
                            onClicked: {
                                killApplication()
                            }
                        }

                        Column {
                            id: canCheckCodes
                            width: 500 - 2*parent.padding
                            visible: speed.text == 0
                            spacing: parent.spacing
                            
                            Button {
                                id: checkForUpdatesButton
                                text: qsTr("Check for updates")
                                visible: true
                                anchors.horizontalCenter: parent.horizontalCenter
                                
                                onClicked: {
                                    checkForUpdates()
                                }
                            }

                            Button {
                                id: checkErrorCodeButton
                                text: qsTr("Check for error codes")
                                visible: true
                                anchors.horizontalCenter: parent.horizontalCenter
                                
                                onClicked: {
                                    checkErrorCodes()
                                }
                            }

                            Text {
                                id: errorCodeResponseText
                                color: "#c4c4c4"
                                text: qsTr("Check engine is ON\nError code(s):\n\nC1600")
                                horizontalAlignment: Text.AlignHCenter
                                anchors.left: parent.left
                                anchors.right: parent.right
                                font.pixelSize: 12
                                visible: false
                            }

                            Button {
                                id: clearErrorCodesButton
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("Clear error codes")
                                visible: false

                                onClicked: {
                                    messageDialog.open()
                                }
                            }
                            
                            MessageDialog {
                                id: messageDialog
                                title: "Confirm error code removal"
                                text: "If you erase the error codes, you will not be able to query them anymore. Confirm removal?"
                                standardButtons: StandardButton.Yes | StandardButton.No
                                onYes: {
                                    clearErrorCodes()
                                }
                            }
                        }

                        AllPIDs { }
                    }
                }
            }
        }
    }
}
