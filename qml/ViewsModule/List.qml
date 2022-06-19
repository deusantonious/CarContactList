import QtQuick 2.0
import Contacts 1.0

ListView {
    id: root

    spacing: 0
    model: ContactsModel {

    }

    delegate: ListDelegate {
        width: root.width
        height: 100
    }
}
