#include "SimEarth/MainWindow.h++"
#include <QtWidgets/QMenuBar>

#include "SimEarth/Menu/Speed.h++"

namespace SimEarth::Menu {  
  Speed::Speed(MainWindow* parent) :
      menu(parent->menuBar()->addMenu(parent->tr("&Speed"))),
      fast(parent->tr("Fast"), parent), 
      moderate(parent->tr("Moderate"), parent),
      slow(parent->tr("Slow"), parent),
      pause(parent->tr("Pause"), parent),
      relativeDate(parent->tr("History"), parent),
      absoluteDate(parent->tr("Report"), parent) {
    fast.setCheckable(true);
    moderate.setCheckable(true);
    slow.setCheckable(true);
    pause.setCheckable(true);
    updateSpeedCheckboxes();
    relativeDate.setCheckable(true);
    absoluteDate.setCheckable(true);
    updateDateCheckboxes();
    menu->addActions({
      &fast, &moderate, &slow, &pause,
      &relativeDate, &absoluteDate
    });
  }
  Speed::~Speed() {
    delete(menu);
  }
  void Speed::updateSpeedCheckboxes() {
    pause.setChecked(speed == Pause);
    moderate.setChecked(speed == Moderate);
    slow.setChecked(speed == Slow);
    fast.setChecked(speed == Fast);
  }
  void Speed::updateDateCheckboxes() {
    relativeDate.setChecked(dateMode == Relative);
    absoluteDate.setChecked(dateMode == Absolute);
  }
} // namespace SimEarth::Menu