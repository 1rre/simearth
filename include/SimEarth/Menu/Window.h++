#ifndef _HEADERFILE_SIMEARTH_MENU_WINDOW
#define _HEADERFILE_SIMEARTH_MENU_WINDOW

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>
#include "SimEarth/MainWindow.h++"
#include "SimEarth/Menu/Menu.h++"

namespace SimEarth::Menu {
  struct Window : public Menu {
    QAction edit, map, globe, gaia, history, report, tutorial, glossary;
    Window(MainWindow*);
  };
}

#endif // SIMEARTH_MENU_WINDOW_H
