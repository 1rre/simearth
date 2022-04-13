#include <QtWidgets/QApplication>
#include "SimEarth/MainWindow.h++"

int main(int args_size, char** args) {
  QApplication app(args_size, args);
  SimEarth::MainWindow window;
  window.show();
  return app.exec();
}
