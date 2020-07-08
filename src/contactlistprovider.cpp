#include "contactlistprovider.h"

ContactListProvider::ContactListProvider()
{
    m_contacts.push_back(Contact("Bill","Gates"));
    m_contacts.push_back(Contact("Steve","Jobs"));
    m_contacts.push_back(Contact("Mark","Zukerberg"));
    m_contacts.push_back(Contact("Sergey","Brin"));
    m_contacts.push_back(Contact("Albert","Einstein"));
}

void ContactListProvider::registerMe(const std::string &moduleName)
{
    qmlRegisterType<ContactListProvider>(moduleName.c_str(), 1,0,"ContactsModel");
}

QHash<int, QByteArray> ContactListProvider::roleNames() const
{
    QHash <int, QByteArray> roles;
    roles[ContactRoles::Name] = "name";
    roles[ContactRoles::Surname] = "surname";
    return roles;
}

int ContactListProvider::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return static_cast<int>(m_contacts.size());
}

QVariant ContactListProvider::data(const QModelIndex &index, int role) const
{
    if(!index.isValid() || index.row() > rowCount((index))){
        return {};
    }
    const Contact& contact {m_contacts.at(index.row())};

    switch (role) {
    case ContactRoles::Name: {
        return QVariant::fromValue(contact.name());
    }
    case ContactRoles::Surname: {
        return QVariant::fromValue(contact.surname());
    }
    default: {
        return true;
    }
    }
}
