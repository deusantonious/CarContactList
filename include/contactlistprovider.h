#ifndef CONTACTLISTPROVIDER_H
#define CONTACTLISTPROVIDER_H
#include <QAbstractListModel>
#include <QQmlEngine>
#include <vector>
#include "contact.h"
class ContactListProvider
        :public QAbstractListModel
{
    Q_OBJECT
public:
    ContactListProvider();
    static void registerMe(const std::string & moduleName);
    QHash <int, QByteArray> roleNames() const override;
    int rowCount(const QModelIndex& parent = {}) const override;
    QVariant data(const QModelIndex& index = {}, int role = Qt::DisplayRole) const override;
private:
    std::vector<Contact> m_contacts;

    enum ContactRoles {
        Name = Qt::UserRole + 1,
        Surname
    };
};
#endif // CONTACTLISTPROVIDER_H
