
#include <QApplication>
#include "boardframe.h"
#include <QFrame>
#include "boardmodel.h"
#include "localcontrol.h"
#include "showinfoframeui.h"
#include "selectmodeldialogui.h"
#include "QTcpSocket"
#include "connectdialog.h"
#include "servernetworkcontrol.h"
#include <QDebug>
#include <QMessageBox>
#include <clientnetworkcontrol.h>
int main(int argc, char *argv[])
{
   QApplication a(argc, argv);

   ClientNetworkControl dch;
   dch.start();
   a.exec();
   return 0;
}
