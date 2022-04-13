#ifndef _HEADERFILE_SIMEARTH_MENU_MENU
#define _HEADERFILE_SIMEARTH_MENU_MENU

#include <QtWidgets/QMenu>

namespace SimEarth::Menu {
  struct Menu {
    QMenu* menu;
    Menu(QMenu*);
    virtual ~Menu();
  };
}

#endif