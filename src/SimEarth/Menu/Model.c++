#include "SimEarth/Menu/Model.h++"
#include "SimEarth/MainWindow.h++"
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  Model::Model(MainWindow* parent) :
      menu(parent->menuBar()->addMenu(parent->tr("&Model"))),
      geosphere(parent->tr("Geosphere"), parent),
      atmosphere(parent->tr("Atmosphere"), parent),
      biosphere(parent->tr("Biosphere"), parent),
      civilisation(parent->tr("Civilisation"), parent) {
    menu->addActions({&geosphere, &atmosphere, &biosphere, &civilisation});
  }
  Model::~Model() {
    delete(menu);
  }
} // namespace SimEarth::Menu
