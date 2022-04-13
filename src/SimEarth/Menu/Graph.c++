#include "SimEarth/Menu/Graph.h++"
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  Graph::Graph(QMainWindow* parent) :
      menu(parent->menuBar()->addMenu(parent->tr("&Graph"))),
      airSample(parent->tr("Air Sample"), parent), 
      biomes(parent->tr("Biomes"), parent),
      lifeForms(parent->tr("Life Forms"), parent),
      technology(parent->tr("Technology"), parent) {
    menu->addActions({&airSample, &biomes, &lifeForms, &technology});
  }
  Graph::~Graph() {
    delete(menu);
  }
} // namespace SimEarth::Menu
