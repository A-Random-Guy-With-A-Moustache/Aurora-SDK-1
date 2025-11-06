import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("PZ1")
        extraContent.children: [
            IconButton {
                objectName: "aboutButton"
                icon.source: "image://theme/icon-m-about"
                anchors.verticalCenter: parent.verticalCenter

                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }
    Image {
        id: img
        width: 480
        height: 480
        source: "img/img1.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    Rectangle {
        id: rect
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2+270
        width: 480
        height: 200
        color: "lime"
        Text{
            id: verse
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "А рядом у соседних столиков
Лакеи сонные торчат,
И пьяницы с глазами кроликов
«In vino veritas!»* кричат."
            horizontalAlignment: Text.AlignHCenter
        }
    }
    Rectangle {
        id: circ
        width: 400
        height: 400
        radius: 200
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2-650
        gradient: Gradient {
             GradientStop { position: 0.00; color: "red" }
             GradientStop { position: 0.50; color: "green" }
             GradientStop { position: 1.00; color: "blue" }
        }
        transform: [
         Rotation {
         angle: 120
         origin.x: parent.x+200; origin.y: parent.y+200
         }]

    }

}
