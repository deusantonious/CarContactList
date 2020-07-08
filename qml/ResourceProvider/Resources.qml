pragma Singleton
import QtQuick 2.0

Item {
    property alias contacts: _contacts
    QtObject {
        id: _contacts
        readonly property string defaultContactIcon: "qrc:/qml/images/contact.svg"
    }
    property alias grid_button: _grid_button
    QtObject {
        id: _grid_button
        readonly property string gridButton: "qrc:/qml/images/grid.svg"
    }
    property alias list_button: _list_button
    QtObject {
        id: _list_button
        readonly property string listButton: "qrc:/qml/images/list.svg"
    }
}
