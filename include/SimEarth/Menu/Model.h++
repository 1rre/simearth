#ifndef SIMEARTH_MENU_MODEL
#define SIMEARTH_MENU_MODEL

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include "SimEarth/MainWindow.h++"

namespace SimEarth::Menu {
  struct Model {
    QMenu* menu;
    QAction geosphere;
    QAction atmosphere;
    QAction biosphere;
    QAction civilisation;
    Model(MainWindow* parent);
    ~Model();
  };
}

#endif // SIMEARTH_MENU_MODEL
