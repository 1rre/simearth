#ifndef _HEADERFILE_SIMEARTH_MAINWINDOW
#define _HEADERFILE_SIMEARTH_MAINWINDOW

#include <QtWidgets/QMainWindow>
#include "SimEarth/Menu/Menu.h++"

namespace SimEarth {
  class MainWindow : public QMainWindow {
    private:
      Q_OBJECT
      Menu::Menu* menuFile;
      Menu::Menu* menuWindow;
      Menu::Menu* menuModel;
      Menu::Menu* menuGraph;
      Menu::Menu* menuOptions;
      Menu::Menu* menuSpeed;

    public:
      MainWindow(QWidget* parent = nullptr);
      ~MainWindow();
  };
} // namespace SimEarth


#endif // SIMEARTH_MAINWINDOW