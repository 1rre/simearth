#include "SimEarth/Menu/Options.h++"
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  Options::Options(QMainWindow* parent) :
      menu(parent->menuBar()->addMenu(parent->tr("&Options"))),
      gotoEvents(parent->tr("Goto Events"), parent), 
      updateBackground(parent->tr("Update Background"), parent),
      compressEditScreen(parent->tr("Compress Edit Screen"), parent),
      music(parent->tr("Music"), parent),
      soundEffects(parent->tr("Sound Effects"), parent),
      messages(parent->tr("Messages"), parent),
      autoscroll(parent->tr("Autoscroll"), parent),
      save(parent->tr("Save Options & Windows"), parent) {
    menu->addActions({
      &gotoEvents, &updateBackground, &compressEditScreen, &music,
      &soundEffects, &messages, &autoscroll
    });
    menu->addSeparator();
    menu->addAction(&save);
  }
  Options::~Options() {
    delete(menu);
  }
} // namespace SimEarth::Menu
