#ifndef _HEADERFILE_SIMEARTH_MENU_OPTIONS
#define _HEADERFILE_SIMEARTH_MENU_OPTIONS

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>
#include "SimEarth/MainWindow.h++"
#include "SimEarth/Menu/Menu.h++"

namespace SimEarth::Menu {
  struct Options : public Menu {
    QAction gotoEvents, updateBackground, compressEditScreen, music, soundEffects, messages, autoscroll, save;
    Options(MainWindow*);
  };
}


#endif // SIMEARTH_MENU_OPTIONS

