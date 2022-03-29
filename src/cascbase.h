#ifndef CASCBASE_H
#define CASCBASE_H

#include <QObject>

class CASCBase : public QObject
{
    Q_OBJECT
public:
    explicit CASCBase(QObject *parent = nullptr);

signals:

};

#endif // CASCBASE_H
