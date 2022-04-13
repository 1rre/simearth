#include <QtWidgets/QApplication>
#include "SimEarth/MainWindow.h++"
#include "SimEarth/Simulation.h++"

int main(int args_size, char** args) {
  QApplication app(args_size, args);
  SimEarth::MainWindow window;

  SimEarth::Simulation sim;

  window.show();
  return app.exec();
}
