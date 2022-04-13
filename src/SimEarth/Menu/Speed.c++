#include "SimEarth/MainWindow.h++"
#include <QtWidgets/QMenuBar>

#include "SimEarth/Menu/Speed.h++"

namespace SimEarth::Menu {  
  Speed::Speed(SimEarth::MainWindow* parent) :
      Menu(parent->menuBar()->addMenu(parent->tr("&Speed"))),
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
  void Speed::updateSpeedCheckboxes() {
    pause.setChecked(true);
    moderate.setChecked(false);
    slow.setChecked(false);
    fast.setChecked(false);
  }
  void Speed::updateDateCheckboxes() {
    relativeDate.setChecked(false);
    absoluteDate.setChecked(true);
  }
} // namespace SimEarth::Menu