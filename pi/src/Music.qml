import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.8
import Qt.labs.settings 1.0

import "Theme.js" as Theme;

Item {
    anchors.fill: parent
    objectName: "MusicPage"

    Text {
        function getTitle(str) {
            var l = str.toString().split('/')
            var len = l.length
            return l[len-1]
        }

        color: Theme.txColor
        text: getTitle(playMusic.playlist.currentItemSource)
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
            color: Theme.txColor
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
                    color: Theme.txColor
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
            color: Theme.txColor
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
            color: Theme.txColor
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
            color: Theme.txColor
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
            color: Theme.txColor
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
        contentWidth: -1 // prevent horizontal scroll

        MusicItems { }
    }
}
