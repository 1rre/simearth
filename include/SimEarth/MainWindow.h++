#ifndef SIMEARTH_MAINWINDOW
#define SIMEARTH_MAINWINDOW

#include <QtWidgets/QMainWindow>
#include "SimEarth/Menu/File.h++"
#include "SimEarth/Menu/Window.h++"
#include "SimEarth/Menu/Model.h++"
#include "SimEarth/Menu/Graph.h++"
#include "SimEarth/Menu/Options.h++"
#include "SimEarth/Menu/Speed.h++"
#include "SimEarth/Menu/Sound.h++"

namespace SimEarth {
  class MainWindow : public QMainWindow {
    private:
      Q_OBJECT
      Menu::File* menuFile;
      Menu::Window* menuWindow;
      Menu::Model* menuModel;
      Menu::Graph* menuGraph;
      Menu::Options* menuOptions;
      Menu::Speed* menuSpeed;

    public:
      MainWindow(QWidget* parent = nullptr);
      ~MainWindow();
  };
} // namespace SimEarth


#endif // SIMEARTH_MAINWINDOW