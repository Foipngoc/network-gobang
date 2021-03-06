#ifndef CONTROLINTERFACE_H
#define CONTROLINTERFACE_H

#include "position.h"
#include "ChessColorPro.h"
class ControlInterface
{
public:
    ControlInterface();
    virtual void putChessSignal(Position pos)=0;
    virtual void giveUpSignal(ChessColorPro )=0;
    virtual void exitSignal(ChessColorPro)=0;
    virtual void timeOutSingal(ChessColorPro)=0;
    using END_FLAGS=enum{TIMEOUT,GAVEUP,END,RUN,NOSTART};
    virtual ~ControlInterface();
};

#endif // CONTROLINTERFACE_H
