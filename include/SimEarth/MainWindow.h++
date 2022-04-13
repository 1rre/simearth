#ifndef SIMEARTH_H
#define SIMEARTH_H

#include <QtWidgets/QMainWindow>

namespace SimEarth {
  class MainWindow : public QMainWindow {
    Q_OBJECT
  public:
    MainWindow(QWidget* parent = nullptr);
    ~MainWindow();
  };
} // namespace SimEarth


#endif // SIMEARTH_H