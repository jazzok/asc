#include "cascwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    CASCWindow w;
    w.show();
    return a.exec();
}
