#ifndef _HEADERFILE_SIMEARTH_MENU_GRAPH
#define _HEADERFILE_SIMEARTH_MENU_GRAPH

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>
#include "SimEarth/MainWindow.h++"
#include "SimEarth/Menu/Menu.h++"

namespace SimEarth::Menu {
  struct Graph : public Menu {
    QAction airSample;
    QAction biomes;
    QAction lifeForms;
    QAction technology;
    Graph(MainWindow*);
  };
}


#endif // SIMEARTH_MENU_GRAPH
