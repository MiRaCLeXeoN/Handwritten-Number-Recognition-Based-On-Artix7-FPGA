#include <Python.h>
#include "widget.h"
#include "ui_widget.h"

#include <QMouseEvent>
#include <QPainter>
#include <QSize>
#include <QTextStream>

void py_init()
{
    Py_Initialize();
    printf("importing modules\n");
    PyRun_SimpleString("import sys");
    PyRun_SimpleString("sys.path.append('./')");
    PyRun_SimpleString("import fpgaComTest as test");
    PyRun_SimpleString("test.ser_init()");
}

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    setMouseTracking(true);
    this->press = false;
    this->painter = new QPainter(this); //创建画板，画板附着在对象this上，也就是Widget窗口
    py_init();
}

Widget::~Widget()
{
    PyRun_SimpleString("test.ser_final()");
    delete ui;
}


//绘画，每次update的时候执行
void Widget::paintEvent(QPaintEvent *event)
{
    painter = new QPainter(this);
    QPen mypen;
    int i, dx, dy;
    //if (isPush) goto nn_visual;

    mypen.setColor(Qt::black);      //点的颜色
    mypen.setCapStyle(Qt::RoundCap);
    mypen.setJoinStyle(Qt::RoundJoin);
    mypen.setWidth(3);             //点的大小
    painter->setPen(mypen);          //画板设置画笔
    dx = 200;
    dy = 100;
    painter->drawLine(QPointF(570+dy, 0+dx), QPointF(570+dy, 485+dx));
    painter->drawLine(QPointF(dy, 485+dx), QPointF(570+dy, 485+dx));
    painter->drawLine(QPointF(dy, dx), QPointF(570+dy, dx));
    painter->drawLine(QPointF(dy, 0+dx), QPointF(dy, 485+dx));
    mypen.setWidth(50);             //点的大小
    painter->setPen(mypen);          //画板设置画笔
    i = 0;                      //把每一次鼠标移动的地方进行画点
    while(point_list.size()!=0 && i != point_list.size())
    {
        painter->drawPoint(point_list.at(i));
        i++;
    }

    if (!isPush) return;

//nn_visual:
    // nn-visualization
    // 反走样
    painter->setRenderHint(QPainter::Antialiasing, true);
    dx = 750;

    // 设置画笔颜色、宽度
    painter->setPen(QPen(QColor(0, 160, 230), 2));
    QFont font;
    font.setPointSize(20);
    painter->setFont(font);

    float a[10] = {0};


    QFile f("C:\\temp\\data.txt");
    f.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream in(&f);
    for (int i = 0; i < 10; ++i)
    {
        in >> a[i];
        // 设置画刷颜色
        painter->setBrush(QColor(0, 0, 0, 255*a[i]));
        // 绘制圆
        painter->drawEllipse(QPointF(500+dx, 80 * (i + 1)), 30, 30);
        painter->drawText(550+dx, 80 * (i + 1) + 8, QString::number(a[i], 'f', 4));
    }

    for (int i = 0; i < 5; ++i)
    {
        // 设置画刷颜色
        painter->setBrush(QColor(0, 0, 0, 255));
        // 绘制圆
        painter->drawEllipse(QPointF(100+dx, 70 * (i + 1)), 30, 30);

    }
    for (int i = 5; i < 10; ++i)
    {
        // 设置画刷颜色
        painter->setBrush(QColor(0, 0, 0, 255));
        // 绘制圆
        painter->drawEllipse(QPointF(100+dx, 100 + 70 * (i + 1)), 30, 30);

    }
    mypen.setWidth(6);
    painter->setPen(mypen);
    //三个省略号
    painter->drawPoint(100+dx,375+30);
    painter->drawPoint(100+dx,400+30);
    painter->drawPoint(100+dx,425+30);



    mypen.setWidth(2);
    mypen.setColor(Qt::darkBlue);
    painter->setPen(mypen);
    for (int i = 0; i < 5; ++i)
        for(int j = 0; j < 10; ++j)
            painter->drawLine(QPointF(100+dx, 70 * (i + 1)), QPointF(500+dx, 80 * (j + 1)));
    for (int i = 5; i < 10; ++i)
        for(int j = 0; j < 10; ++j)
            painter->drawLine(QPointF(100+dx, 100 + 70 * (i + 1)), QPointF(500+dx, 80 * (j + 1)));


    float max = 0.0;
    int max_i = 0;
    for(int i = 0; i < 10; i++)
        if(a[i] > max){
            max = a[i];
            max_i = i;
        }
    font.setPointSize(200);
    painter->setFont(font);
    painter->drawText(730+dx, 540, QString::number(max_i));
    f.close();
}

//鼠标左键按下，开始记录坐标
void Widget::mousePressEvent(QMouseEvent *event)
{
    if(event->button() == Qt::LeftButton){
        this->press = true;
    }
}

//鼠标移动事件
void Widget::mouseMoveEvent(QMouseEvent *event)
{
    if(event->buttons() & Qt::LeftButton)
    {
        if(this->press)     //只有鼠标被按下的时候才记录坐标
        {
            point = event->pos();       //记录坐标
            point_list.append(point);   //记录每一次移动的坐标
            update();                   //更新，让画笔画画
        }

    }
}

//鼠标松开，停止记录
void Widget::mouseReleaseEvent(QMouseEvent *event)
{
    if(event->button()==Qt::LeftButton)
    {
        this->press = false;
    }
}




//确定按键
void Widget::on_pushButton_clicked()
{
    //QPixmap pixmap = QPixmap::grabWidget(this);     //把Widget窗口内容转为QPixmap
    QPixmap pixmap = QWidget::grab(QRect(100,200,570,485));     //把Widget窗口内容转为QPixmap
    QSize picSize(100,100);                           //设置修改的大小为28*28
    QPixmap ret = pixmap.scaled(picSize);           //重新修改QPixmap的大小



    ret.save("C:\\temp\\num.png"); //保存QPixmap为png图片
    //ret.save("C:\\temp\\num.png"); //保存QPixmap为png图片

//    static bool odd = true;
//    QFile f0("C:\\Users\\lenovo\\Desktop\\status.txt");
    //QFile f("C:\\temp\\status.txt");
//    f0.open(QIODevice::WriteOnly|QIODevice::Text);
//    QTextStream out(&f0);//写入
//    out << odd;
//    f0.close();

    PyRun_SimpleString("test.ser_send()");

    isPush = true;
    //isPush = false;
    update();
}

//清除按键
void Widget::on_pushButton_2_clicked()
{
    point_list.clear();     //清空鼠标坐标记录
    isPush = false;
    update();               //更新，让画笔画画
}

