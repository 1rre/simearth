import qbs.TextFile

QtApplication {
  Depends {name: "Qt.widgets"}
  files: [
    "src/main.c++",
    "src/SimEarth/MainWindow.c++",
    "include/SimEarth/MainWindow.h++"
  ]
  cpp.includePaths: ["./include"]
}