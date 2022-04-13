#ifndef SIMEARTH_MENU_SPEED
#define SIMEARTH_MENU_SPEED

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>

namespace SimEarth::Menu {
  struct Speed {
    QMenu* menu;

    Speed(QMainWindow* parent);
    ~Speed();
  };
}


#endif // SIMEARTH_MENU_SPEED
