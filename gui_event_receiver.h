#ifndef GUI_EVENT_RECEIVER_H
#define GUI_EVENT_RECEIVER_H

#include <QObject>

class GuiEventReceiver: public QObject
{
    Q_OBJECT
    Q_PROPERTY(float CreateClass READ CreateClass WRITE ClassCreated)

public:
    GuiEventReceiver();

    /*** Receiver functions ***/

    float CreateClass() const{
        return 1;
    }

    void ClassCreated(float action) {
        action_ = action;
    }

    float action_;

Q_SIGNALS:

};

#endif // GUI_EVENT_RECEIVER_H
