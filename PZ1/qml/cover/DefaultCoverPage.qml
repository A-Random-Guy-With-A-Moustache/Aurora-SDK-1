import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    objectName: "defaultCover"

    CoverTemplate {
        objectName: "applicationCover"
        primaryText: "App"
        secondaryText: qsTr("PZ1")
        icon {
            source: Qt.resolvedUrl("../icons/PZ1.svg")
            sourceSize { width: icon.width; height: icon.height }
        }
    }
}
