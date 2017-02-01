#ifndef GUI_EVENT_RECEIVER_H
#define GUI_EVENT_RECEIVER_H

#include <QObject>

class GuiEventReceiver: public QObject
{
    Q_OBJECT
public:
    GuiEventReceiver();
};

#endif // GUI_EVENT_RECEIVER_H
