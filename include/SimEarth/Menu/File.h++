#ifndef SIMEARTH_MENU_FILE_H
#define SIMEARTH_MENU_FILE_H

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>

namespace SimEarth::Menu {
  class File {
    public:
      QMenu* menu;
      QAction newPlanet;
      QAction loadPlanet;
      QAction savePlanet;
      QAction saveAs;
      QAction snapshot;
      QAction quit;
      File(QMainWindow* parent);
      ~File();
  };
}

#endif // SIMEARTH_MENU_FILE_H