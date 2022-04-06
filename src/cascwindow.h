#ifndef CASCWINDOW_H
#define CASCWINDOW_H

#include <QMainWindow>

class CASCWindow : public QMainWindow
{
    Q_OBJECT

public:
    CASCWindow(QWidget *parent = nullptr);
    ~CASCWindow();
};
#endif // CASCWINDOW_H
