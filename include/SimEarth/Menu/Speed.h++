#ifndef _HEADERFILE_SIMEARTH_MENU_SPEED
#define _HEADERFILE_SIMEARTH_MENU_SPEED

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>
#include "SimEarth/MainWindow.h++"
#include "SimEarth/Menu/Menu.h++"

namespace SimEarth::Menu {
  struct Speed : public Menu {
    QAction fast, moderate, slow, pause;
    QAction relativeDate, absoluteDate;
    void updateDateCheckboxes();
    void updateSpeedCheckboxes();
    Speed(MainWindow*);
  };
}


#endif // SIMEARTH_MENU_SPEED
