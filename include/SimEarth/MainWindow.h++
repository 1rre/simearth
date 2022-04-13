#ifndef SIMEARTH_MAINWINDOW_H
#define SIMEARTH_MAINWINDOW_H

#include <QtWidgets/QMainWindow>
#include "SimEarth/Menu/File.h++"
#include "SimEarth/Menu/Window.h++"
#include "SimEarth/Menu/Model.h++"

namespace SimEarth {
    class MainWindow : public QMainWindow {
    private:
      Q_OBJECT
      Menu::File* menuFile;
      Menu::Window* menuWindow;
      Menu::Model* menuModel;
      
      /*
      QMenu* modelMenu;
      QMenu* graphMenu;
      QMenu* optionMenu;
      QMenu* speedMenu;
      QMenu* soundMenu;
      */

      void createMenus();
      void createActions();
    public:
      MainWindow(QWidget* parent = nullptr);
      ~MainWindow();
  };
} // namespace SimEarth


#endif // SIMEARTH_MAINWINDOW_H