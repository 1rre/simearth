#ifndef SIMEARTH_MENU_GRAPH
#define SIMEARTH_MENU_GRAPH

#include <QtWidgets/QMenu>
#include <QtGui/QAction>
#include <QtWidgets/QMainWindow>

namespace SimEarth::Menu {
  struct Graph {
    QMenu* menu;
    QAction airSample;
    QAction biomes;
    QAction lifeForms;
    QAction technology;
    Graph(QMainWindow* parent);
    ~Graph();
  };
}


#endif // SIMEARTH_MENU_GRAPH
