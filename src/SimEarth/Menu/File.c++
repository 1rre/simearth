#include "SimEarth/Menu/File.h++"
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  File::File(QMainWindow* parent) :
      menu(parent->menuBar()->addMenu(parent->tr("&File"))),
      newPlanet(parent->tr("New Planet"), parent), 
      loadPlanet(parent->tr("Load Planet"), parent),
      savePlanet(parent->tr("Save Planet"), parent),
      saveAs(parent->tr("Save As"), parent),
      snapshot(parent->tr("Snapshot"), parent),
      quit(parent->tr("Quit"), parent) {
    menu->addActions({&newPlanet, &loadPlanet, &savePlanet, &saveAs});
    menu->addSeparator();
    menu->addAction(&snapshot);
    menu->addSeparator();
    menu->addAction(&quit);
  }
  File::~File() {
    delete(menu);
  }
} // namespace SimEarth::Menu
