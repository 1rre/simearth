#include "SimEarth/Menu/Speed.h++"
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>

namespace SimEarth::Menu {
  Speed::Speed(QMainWindow* parent) :
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
    pause.setChecked(true);
    relativeDate.setCheckable(true);
    absoluteDate.setCheckable(true);
    absoluteDate.setChecked(true);
    menu->addActions({
      &fast, &moderate, &slow, &pause,
      &relativeDate, &absoluteDate
    });
  }
  Speed::~Speed() {
    delete(menu);
  }
} // namespace SimEarth::Menu