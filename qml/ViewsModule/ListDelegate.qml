import QtQuick 2.0
import QtQuick.Controls.Material 2.12
Rectangle {
    id: root
    color: "#202020"
    opacity: _delegateArea.pressed ? 0.8
                                   : 1
    MouseArea {
        id: _delegateArea
        anchors.fill: root
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
