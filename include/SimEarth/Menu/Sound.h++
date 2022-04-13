#ifndef SIMEARTH_MENU_SOUND
#define SIMEARTH_MENU_SOUND

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>

namespace SimEarth::Menu {
  struct Sound {
    QMenu* menu;

    Sound(QMainWindow* parent);
    ~Sound();
  };
}


#endif // SIMEARTH_MENU_SOUND