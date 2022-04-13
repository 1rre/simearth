#ifndef SIMEARTH_MENU_SPEED
#define SIMEARTH_MENU_SPEED

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include "SimEarth/MainWindow.h++"

namespace SimEarth::Menu {
  struct Speed {
    public:
      Speed(MainWindow*);
      ~Speed();
    private:
      void updateSpeedCheckboxes();
      void updateDateCheckboxes();
      QMenu* menu;
      QAction fast, moderate, slow, pause;
      QAction relativeDate, absoluteDate;
  };
}


#endif // SIMEARTH_MENU_SPEED
