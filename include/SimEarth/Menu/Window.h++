#ifndef SIMEARTH_MENU_WINDOW_H
#define SIMEARTH_MENU_WINDOW_H

#include <QtWidgets/QMenu>
#include <QtGUI/QAction>
#include <QtWidgets/QMainWindow>

namespace SimEarth::Menu {
  class Window {
    public:
      QMenu* menu;
      QAction edit;
      QAction map;
      QAction globe;
      QAction gaia;
      QAction history;
      QAction report;
      QAction tutorial;
      QAction glossary;
      Window(QMainWindow* parent);
      ~Window();
  };
}

#endif // SIMEARTH_MENU_WINDOW_H