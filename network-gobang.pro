QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
msvc:QMAKE_CXXFLAGS += -execution-charset:utf-8
msvc:QMAKE_CXXFLAGS += -source-charset:utf-8
QMAKE_CXXFLAGS_WARN_ON += -wd4819
SOURCES += \
    boardframe.cpp \
    boardmodel.cpp \
    boardmodelinterface.cpp \
    chesser.cpp \
    chesserai.cpp \
    chesserman.cpp \
    clientnetworkcontrol.cpp \
    clientsocketmodel.cpp \
    connectdialog.cpp \
    controlinterface.cpp \
    localcontrol.cpp \
    main.cpp \
    networkcontrol.cpp \
    observable.cpp \
    observer.cpp \
    position.cpp \
    remotecontrolinterface.cpp \
    selectmodeldialogui.cpp \
    servernetworkcontrol.cpp \
    serversocketmodel.cpp \
    showinfoframeui.cpp \
    socketinterface.cpp \
    tcptest.cpp

HEADERS += \
    ChessColorPro.h \
    boardframe.h \
    boardmodel.h \
    boardmodelinterface.h \
    chesser.h \
    chesserai.h \
    chesserman.h \
    clientnetworkcontrol.h \
    clientsocketmodel.h \
    connectdialog.h \
    controlinterface.h \
    localcontrol.h \
    networkcontrol.h \
    observable.h \
    observer.h \
    position.h \
    remotecontrolinterface.h \
    selectmodeldialogui.h \
    servernetworkcontrol.h \
    serversocketmodel.h \
    showinfoframeui.h \
    socketinterface.h \
    tcptest.h

FORMS += \
    connectdialog.ui \
    selectmodeldialogui.ui \
    showinfoframeui.ui \
    tcptest.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    image.qrc

DISTFILES +=
