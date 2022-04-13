#ifndef SIMEARTH_MENU_MODEL_H
#define SIMEARTH_MENU_MODEL_H

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>

namespace SimEarth::Menu {
  class Model {
    public:
      QMenu* menu;
      QAction geosphere;
      QAction atmosphere;
      QAction biosphere;
      QAction civilisation;
      Model(QMainWindow* parent);
      ~Model();
  };
}

#endif // SIMEARTH_MENU_MODEL_H