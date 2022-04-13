#include "SimEarth/Menu/Options.h++"
#include "SimEarth/MainWindow.h++"
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  Options::Options(MainWindow* parent) :
      menu(parent->menuBar()->addMenu(parent->tr("&Options"))),
      gotoEvents(parent->tr("Goto Events"), parent), 
      updateBackground(parent->tr("Update Background"), parent),
      compressEditScreen(parent->tr("Compress Edit Screen"), parent),
      music(parent->tr("Music"), parent),
      soundEffects(parent->tr("Sound Effects"), parent),
      messages(parent->tr("Messages"), parent),
      autoscroll(parent->tr("Autoscroll"), parent),
      save(parent->tr("Save Options && Windows"), parent) {
    gotoEvents.setCheckable(true);
    gotoEvents.setChecked(true);
    updateBackground.setCheckable(true);
    updateBackground.setChecked(true);
    compressEditScreen.setCheckable(true);
    compressEditScreen.setChecked(false);
    music.setCheckable(true);
    music.setChecked(false);
    soundEffects.setCheckable(true);
    soundEffects.setChecked(false);
    messages.setCheckable(true);
    messages.setChecked(true);
    autoscroll.setCheckable(true);
    autoscroll.setChecked(true);
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
