#ifndef _HEADERFILE_SIMEARTH_MENU_MODEL
#define _HEADERFILE_SIMEARTH_MENU_MODEL

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>
#include "SimEarth/MainWindow.h++"
#include "SimEarth/Menu/Menu.h++"

namespace SimEarth::Menu {
  struct Model : public Menu {
    QAction geosphere;
    QAction atmosphere;
    QAction biosphere;
    QAction civilisation;
    Model(MainWindow*);
  };
}

#endif // SIMEARTH_MENU_MODEL
