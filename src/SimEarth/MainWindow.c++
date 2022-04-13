#include "SimEarth/MainWindow.h++"

namespace SimEarth {

  MainWindow::MainWindow(QWidget* parent) : QMainWindow(parent) {
    resize(640, 400);
    setWindowTitle(tr("Menus"));
    
    menuFile = new Menu::File(this);
    menuWindow = new Menu::Window(this);
    menuModel = new Menu::Model(this);
    menuGraph = new Menu::Graph(this);
    menuOptions = new Menu::Options(this);
    menuSpeed = new Menu::Speed(this);
  }

  MainWindow::~MainWindow() {
    delete menuFile;
    delete menuWindow;
    delete menuModel;
    delete menuGraph;
    delete menuOptions;
    delete menuSpeed;
  }
}

