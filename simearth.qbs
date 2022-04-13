import qbs.TextFile

QtApplication {
  Depends {name: "Qt.widgets"}
  Depends {name: "Qt.gui"}
  files: [
    "src/main.c++",
    "src/SimEarth/MainWindow.c++",
    "src/SimEarth/Menu/File.c++",
    "src/SimEarth/Menu/Window.c++",
    "src/SimEarth/Menu/Model.c++",
    "include/SimEarth/MainWindow.h++",
    "include/SimEarth/Menu/File.h++",
    "include/SimEarth/Menu/Window.h++",
    "include/SimEarth/Menu/Model.h++"
  ]
  cpp.includePaths: ["./include"]
}