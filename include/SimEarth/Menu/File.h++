#ifndef SIMEARTH_MENU_FILE
#define SIMEARTH_MENU_FILE

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include "SimEarth/MainWindow.h++"

namespace SimEarth::Menu {
  struct File {
    QMenu* menu;
    QAction newPlanet, loadPlanet, savePlanet, saveAs;
    QAction snapshot;
    QAction quit;
    File(MainWindow*);
    ~File();
  };
}

#endif // SIMEARTH_MENU_FILE
