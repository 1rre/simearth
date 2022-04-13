#ifndef _HEADERFILE_SIMEARTH_MENU_FILE
#define _HEADERFILE_SIMEARTH_MENU_FILE

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include "SimEarth/MainWindow.h++"
#include "SimEarth/Menu/Menu.h++"

namespace SimEarth::Menu {
  struct File : public Menu {
    QAction newPlanet, loadPlanet, savePlanet, saveAs;
    QAction snapshot;
    QAction quit;
    File(MainWindow*);
  };
}

#endif // SIMEARTH_MENU_FILE
