#include "widget.h"

#include <QApplication>
#include <QTextStream>
#include <QMouseEvent>
#include <QPainter>
#include <QSize>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Widget w;

    bool status = false;
    QFile f("C:\\Users\\lenovo\\Desktop\\status.txt");
    f.open(QIODevice::WriteOnly|QIODevice::Text);
    QTextStream out(&f);//写入
    out << status;
    f.close();

    w.show();
    return a.exec();
}
