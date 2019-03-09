import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtMultimedia 5.2

Window {
    visible: true
    width: 640
    height: 480
    visibility: "Maximized"
    title: qsTr("Hello World")

    Video {
        id: video
        source: 'file:' + appPath + '/media/loop_h1.mp4'
        autoPlay: true

        fillMode: VideoOutput.Stretch
        anchors.fill: parent
    }

    Audio {
        id: audio
        source: 'file:' + appPath + '/media/loop_h1.mp3'
        autoPlay: true
    }

    function switchGame(game) {
        video.source = 'file:' + appPath + '/media/loop_' + game + '.mp4'
        audio.source = 'file:' + appPath + '/media/loop_' + game + '.mp3'
    }

    Popup {
        id: popup
        anchors.centerIn: parent

        width: 700

        modal: true
        focus: true

        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        topPadding: 8
        horizontalPadding: 20
        bottomPadding: 60

        background: Rectangle {
            radius: 5.0
            gradient: Gradient {
                GradientStop { position: 0.0; color: Qt.rgba(11/255, 65/255, 107/255, 0) }
                GradientStop { position: 0.1; color: Qt.rgba(10/255, 61/255, 101/255, 0.7) }
                GradientStop { position: 0.9; color: Qt.rgba(4/255, 29/255, 51/255, 0.7) }
                GradientStop { position: 1.0; color: Qt.rgba(3/255, 25/255, 45/255, 0) }
            }
        }

        contentItem: ColumnLayout {
            spacing: 10

            Label {
                Layout.fillWidth: true
                wrapMode: Label.WordWrap
                color: '#F0F0F0'
                font.pointSize: 18
                text: 'WELCOME TO HALOME.NU'
            }

            Item {
                Layout.fillWidth: true
                height: 10
            }

            Label {
                Layout.fillWidth: true
                wrapMode: Label.WordWrap
                color: '#F0F0F0'
                text: 'Have you ever left a Halo title running on your TV, just to listen to and watch the main menu? Now you can relive your favorite Halo title menu in your browser.'
            }

            Label {
                Layout.fillWidth: true
                wrapMode: Label.WordWrap
                color: '#F0F0F0'
                text: 'Select game here, or press numbers 1-5 or letters M, O, R and W on your keyboard.'
            }

            Row {
                Layout.fillWidth: true
                spacing: 8

                Label {
                    color: '#b2e0f6'
                    text: 'Halo 1'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('h1')
                        }
                    }
                }

                Label {
                    color: '#b2e0f6'
                    text: 'Halo 2'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('h2')
                        }
                    }
                }

                Label {
                    color: '#b2e0f6'
                    text: 'Halo 3'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('h3')
                        }
                    }
                }
            }

            Row {
                Layout.fillWidth: true
                spacing: 8

                Label {
                    color: '#b2e0f6'
                    text: 'Halo 3: Mythic'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('h3mythic')
                        }
                    }
                }

                Label {
                    color: '#b2e0f6'
                    text: 'Halo 3: ODST'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('odst')
                        }
                    }
                }

                Label {
                    color: '#b2e0f6'
                    text: 'Halo Reach'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('reach')
                        }
                    }
                }
            }

            Row {
                Layout.fillWidth: true
                spacing: 8

                Label {
                    color: '#b2e0f6'
                    text: 'Halo 4'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('h4')
                        }
                    }
                }

                Label {
                    color: '#b2e0f6'
                    text: 'Halo 5'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('h5')
                        }
                    }
                }
            }

            Row {
                Layout.fillWidth: true
                spacing: 8

                Label {
                    color: '#b2e0f6'
                    text: 'Halo Wars'

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            switchGame('wars')
                        }
                    }
                }
            }

            Item {
                Layout.fillWidth: true
                height: 20
            }

            Label {
                Layout.fillWidth: true
                wrapMode: Label.WordWrap
                color: '#F0F0F0'
                text: 'Press space any time to bring up this menu.'
            }
        }
    }

    Shortcut {
        sequence: 'Space'
        onActivated: {
            popup.open()
        }
    }

    Shortcut {
        sequence: '1'
        onActivated: {
            switchGame('h1')
        }
    }

    Shortcut {
        sequence: '2'
        onActivated: {
            switchGame('h2')
        }
    }

    Shortcut {
        sequence: '3'
        onActivated: {
            switchGame('h3')
        }
    }

    Shortcut {
        sequence: '4'
        onActivated: {
            switchGame('h4')
        }
    }

    Shortcut {
        sequence: '5'
        onActivated: {
            switchGame('h5')
        }
    }

    Shortcut {
        sequence: 'm'
        onActivated: {
            switchGame('h3mythic')
        }
    }

    Shortcut {
        sequence: 'o'
        onActivated: {
            switchGame('odst')
        }
    }

    Shortcut {
        sequence: 'r'
        onActivated: {
            switchGame('reach')
        }
    }

    Shortcut {
        sequence: 'w'
        onActivated: {
            switchGame('wars')
        }
    }

    Shortcut {
        sequence: 'Esc'
        onActivated: Qt.quit()
    }

    Component.onCompleted: {
        popup.open()
    }
}
