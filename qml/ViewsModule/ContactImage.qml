import QtQuick 2.0
import ResourceProvider 1.0
import QtGraphicalEffects 1.0

Rectangle {

    id: root
    property real boundingRadius
    property real borderSize
    width: boundingRadius
    height: boundingRadius
    color: "transparent"
    radius: width / 2
    border.width: borderSize
    border.color: "#FFFFFF"

    Image {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        id: _internalImage
        height: root.height * 0.55
        width: root.width * 0.55
        source: Resources.contacts.defaultContactIcon
    }

    ColorOverlay {
        anchors.fill: _internalImage
        source: _internalImage
        color: "#FFFFFF"
    }
}
