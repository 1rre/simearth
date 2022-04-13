#include "SimEarth/Menu/Model.h++"
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  Model::Model(QMainWindow* parent) :
      geosphere(parent->tr("Geosphere"), parent),
      atmosphere(parent->tr("Atmosphere"), parent),
      biosphere(parent->tr("Biosphere"), parent),
      civilisation(parent->tr("Civilisation"), parent),
      menu(parent->menuBar()->addMenu(parent->tr("&Model"))) {
    menu->addActions({&geosphere, &atmosphere, &biosphere, &civilisation});
  }
  Model::~Model() {
    delete(menu);
  }
} // namespace SimEarth::Menu
