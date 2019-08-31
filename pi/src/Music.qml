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
            var s = l[len-1]
            return s.substring(0, s.length - 4)
        }

        color: Theme.txColor
        font.pointSize: 14
        font.bold: true
        text: getTitle(playMusic.playlist.currentItemSource)
        horizontalAlignment: Text.AlignHCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        padding: 5
    }

    Audio {
        id: playMusic
        volume: (volumeControl.text / 100) * (0.9 + 0.5 * (applicationData.speed / 150) + 0.5 * (applicationData.rpm / 6000))
        playlist: Playlist { }
    }

    Row {
        anchors.top: parent.top
        anchors.topMargin: 20
        height: 50
        padding: 0
        property int contentHeight: 50

        Item {
            id: pauseIcon
            width: 40
            height: parent.contentHeight
            visible: true

            Image {
                sourceSize.height: 20
                sourceSize.width: 20
                source: "../img/pause.svg"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: { playMusic.pause(); playIcon.visible = true; pauseIcon.visible = false; }
            }
        }

        Item {
            id: playIcon
            width: 40
            height: parent.contentHeight
            visible: false
        
            Image {
                sourceSize.height: 20
                sourceSize.width: 20
                source: "../img/playFull.svg"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: { playMusic.play(); playIcon.visible = false; pauseIcon.visible = true; }
            }
        }

        Item {
            width: 50
            height: parent.contentHeight

            Text {
                width: parent.width
                color: Theme.txColor
                font.pointSize: 24
                font.bold: true
                padding: 0
                text: "<"
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: { playMusic.playlist.previous(); }
            }
        }
        
        Column {
            topPadding:22
            bottomPadding:22

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

        Item {
            width: 50
            height: parent.contentHeight

            Text {
                width: parent.width
                color: Theme.txColor
                font.pointSize: 24
                font.bold: true
                padding: 0
                text: ">"
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: { playMusic.playlist.next(); }
            }
        }

        Item {
            width: 50
            height: parent.contentHeight
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

        Item {
            width: 50
            height: parent.contentHeight

            Text {
                width: parent.width
                color: Theme.txColor
                font.pointSize: 24
                font.bold: true
                padding: 2
                text: "–"
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: { volumeControl.decr(); }
                onPressAndHold: { volumeControlDecrTimer.running = true; }
                onReleased: { volumeControlDecrTimer.running = false; }
            }
        }

        Item {
            width: 40
            height: parent.contentHeight

            Text {
                id: volumeControl
                width: parent.width
                color: Theme.txColor
                font.pointSize: 24
                font.bold: true
                padding: 2
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
        }

        Item {
            width: 50
            height: parent.contentHeight

            Text {
                width: parent.width
                color: Theme.txColor
                font.pointSize: 24
                font.bold: true
                padding: 2
                text: "+"
                horizontalAlignment: Text.AlignHCenter
            }

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
