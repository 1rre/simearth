#include "SimEarth/Menu/Window.h++"
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  Window::Window(QMainWindow* parent) :
      edit(parent->tr("Edit"), parent), 
      map(parent->tr("Map"), parent),
      globe(parent->tr("Globe"), parent),
      gaia(parent->tr("Gaia"), parent),
      history(parent->tr("History"), parent),
      report(parent->tr("Report"), parent),
      tutorial(parent->tr("Tutorial"), parent),
      glossary(parent->tr("Glossary"), parent),
      menu(parent->menuBar()->addMenu(parent->tr("&Window"))) {
    menu->addActions({&edit, &map, &globe, &gaia, &history, &report, &tutorial, &glossary});
  }
  Window::~Window() {    
    delete(menu);
  }
} // namespace SimEarth::Menu
