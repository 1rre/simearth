#ifndef SIMEARTH_MENU_SPEED
#define SIMEARTH_MENU_SPEED

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>

namespace SimEarth::Menu {
  struct Speed {
    QMenu* menu;
    QAction fast, moderate, slow, pause;
    QAction relativeDate, absoluteDate;
    Speed(QMainWindow* parent);
    ~Speed();
  };
}


#endif // SIMEARTH_MENU_SPEED
