#ifndef SIMEARTH_MENU_SOUND
#define SIMEARTH_MENU_SOUND

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include "SimEarth/MainWindow.h++"

namespace SimEarth::Menu {
  struct Sound {
    QMenu* menu;

    Sound(MainWindow* parent);
    ~Sound();
  };
}


#endif // SIMEARTH_MENU_SOUND