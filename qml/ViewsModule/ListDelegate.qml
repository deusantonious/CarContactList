import QtQuick 2.0

Rectangle {
    id: root
    color: "#202020"
    opacity: _delegateArea.pressed ? 0.8
                                   : 1
    MouseArea {
        id: _delegateArea
        anchors.fill: root
    }
    ContactImage {
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        boundingRadius: parent.height - 20
        borderSize: 5
    }
    Row {
        anchors.horizontalCenter:  root.horizontalCenter
        anchors.verticalCenter:  root.verticalCenter
        spacing: 10
        Text {
            font.pointSize: 24
            color: "#FFFFFF"
            text: name
        }
        Text {
            font.pointSize: 24
            color: "#FFFFFF"
            text: surname
        }
    }
}
