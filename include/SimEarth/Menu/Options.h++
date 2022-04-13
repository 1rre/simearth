#ifndef SIMEARTH_MENU_OPTIONS
#define SIMEARTH_MENU_OPTIONS

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include "SimEarth/MainWindow.h++"

namespace SimEarth::Menu {
  struct Options {
    QMenu* menu;
    QAction gotoEvents, updateBackground, compressEditScreen, music, soundEffects, messages, autoscroll, save;
    Options(MainWindow* parent);
    ~Options();
  };
}


#endif // SIMEARTH_MENU_OPTIONS

