#ifndef CONTACT_H
#define CONTACT_H
#include <QString>

class Contact
{
public:
    Contact() = default;
    Contact(const QString& name, const QString& surname)
        :m_name(name), m_surname(surname)
    {

    }
    QString name() const;
    QString surname() const;

private:
    QString m_name;
    QString m_surname;
};

#endif // CONTACT_H
