#include "SimEarth/Menu/Menu.h++"

namespace SimEarth::Menu {
  Menu::Menu(QMenu* menu) : menu(menu) {}
  Menu::~Menu() {
    delete menu;
  }
} // namespace SimEarth::Menu
