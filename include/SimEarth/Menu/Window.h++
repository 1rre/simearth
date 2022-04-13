#ifndef SIMEARTH_MENU_WINDOW
#define SIMEARTH_MENU_WINDOW

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include "SimEarth/MainWindow.h++"

namespace SimEarth::Menu {
  struct Window {
    QMenu* menu;
    QAction edit, map, globe, gaia, history, report, tutorial, glossary;
    Window(MainWindow* parent);
    ~Window();
  };
}

#endif // SIMEARTH_MENU_WINDOW_H
