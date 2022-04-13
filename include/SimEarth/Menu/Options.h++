#ifndef SIMEARTH_MENU_OPTIONS
#define SIMEARTH_MENU_OPTIONS

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>

namespace SimEarth::Menu {
  struct Options {
    QMenu* menu;
    QAction gotoEvents, updateBackground, compressEditScreen, music, soundEffects, messages, autoscroll, save;
    Options(QMainWindow* parent);
    ~Options();
  };
}


#endif // SIMEARTH_MENU_OPTIONS

