import QtQuick 2.0
import QtQuick.Controls.Material 2.12
import Contacts 1.0
ListView {
    spacing: 0
    id: root
    model: ContactsModel {

    }

    delegate: ListDelegate {
        width: parent.width;
        height: 100
    }

}
