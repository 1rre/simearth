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
    "src/SimEarth/Menu/Graph.c++",
    "src/SimEarth/Menu/Options.c++",
    //"src/SimEarth/Menu/Speed.c++",
    //"src/SimEarth/Menu/Sound.c++",
    "include/SimEarth/MainWindow.h++",
    "include/SimEarth/Menu/File.h++",
    "include/SimEarth/Menu/Window.h++",
    "include/SimEarth/Menu/Model.h++",
    "include/SimEarth/Menu/Graph.h++",
    "include/SimEarth/Menu/Options.h++",
    "include/SimEarth/Menu/Speed.h++",
    "include/SimEarth/Menu/Sound.h++",
  ]
  cpp.includePaths: ["./include"]
}