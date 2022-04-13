#include "SimEarth/Menu/Window.h++"
#include "SimEarth/MainWindow.h++"
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  Window::Window(MainWindow* parent) :
      Menu(parent->menuBar()->addMenu(parent->tr("&Window"))),
      edit(parent->tr("Edit"), parent), 
      map(parent->tr("Map"), parent),
      globe(parent->tr("Globe"), parent),
      gaia(parent->tr("Gaia"), parent),
      history(parent->tr("History"), parent),
      report(parent->tr("Report"), parent),
      tutorial(parent->tr("Tutorial"), parent),
      glossary(parent->tr("Glossary"), parent) {
    menu->addActions({&edit, &map, &globe, &gaia, &history, &report, &tutorial, &glossary});
  }
} // namespace SimEarth::Menu
