#include "contactlistprovider.h"

ContactListProvider::ContactListProvider()
{
    m_contacts.push_back(Contact("Linus","Torvalds"));
    m_contacts.push_back(Contact("Bill","Gates"));
    m_contacts.push_back(Contact("Steve","Jobs"));
    m_contacts.push_back(Contact("Mark","Zukerberg"));
    m_contacts.push_back(Contact("Sergey","Brin"));
    m_contacts.push_back(Contact("Albert","Einstein"));
    m_contacts.push_back(Contact("Marie","Curie"));
    m_contacts.push_back(Contact("Isaac","Newton"));
    m_contacts.push_back(Contact("Charles","Darwin"));
    m_contacts.push_back(Contact("Nikola","Tesla"));
    m_contacts.push_back(Contact("Galileo","Galilei"));
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
