#ifndef SIMEARTH_MENU_SOUND
#define SIMEARTH_MENU_SOUND

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include "SimEarth/MainWindow.h++"
#include "SimEarth/Menu/Menu.h++"


namespace SimEarth::Menu {
  struct Sound : public Menu {
    Sound(MainWindow*);
  };
}


#endif // SIMEARTH_MENU_SOUND