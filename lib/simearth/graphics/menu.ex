defmodule Simearth.Graphics.Menu do

  def gen_menu(frame) do
    menu = :wxMenuBar.new
    file_menu(menu)
    |> window_menu
    |> model_menu
    |> graph_menu
    |> option_menu
    |> speed_menu
    |> dsnd_menu

    :wxFrame.setMenuBar(frame, menu)
  end

  defp file_menu(menu) do
    file = :wxMenu.new
    :wxMenu.append(file, 00, "New Planet", "Generate a new planet", false)
    :wxMenu.append(file, 01, "Load Planet", "Load a saved planet", false)
    :wxMenu.append(file, 02, "Save", "Save your planet", false)
    :wxMenu.append(file, 03, "Snapshot", "Save a snapshot of your planet as a PNG", false)
    :wxMenu.append(file, 04, "Quit", "End your simearth session", false)

    :wxMenuBar.append(menu, file, "File")
    menu
  end

  defp window_menu(menu) do
    window = :wxMenu.new
    :wxMenuBar.append(menu, window, "Window")
    :wxMenu.append(window, 10, "Edit", "Open the 'edit' window", false)
    :wxMenu.append(window, 11, "Map", "Open the 'map' window", false)
    :wxMenu.append(window, 12, "Gaia", "Open the 'gaia' window", false)
    :wxMenu.append(window, 13, "History", "Open the 'history' window", false)
    :wxMenu.append(window, 14, "Report", "Open the 'report' window", false)
    :wxMenu.append(window, 15, "Tutorial", "Open the 'tutorial' window", false)
    :wxMenu.append(window, 16, "Glossary", "Open the 'tutorial' window", false)
    menu
  end

  defp model_menu(menu) do
    model = :wxMenu.new
    :wxMenuBar.append(menu, model, "Model")
    :wxMenu.append(model, 20, "Geosphere", "Open the 'geosphere' control panel", false)
    :wxMenu.append(model, 21, "Atmosphere", "Open the 'map' control panel", false)
    :wxMenu.append(model, 22, "Biosphere", "Open the 'gaia' control panel", false)
    :wxMenu.append(model, 23, "Civilisation", "Open the 'history' control panel", false)
    menu
  end

  defp graph_menu(menu) do
    graph = :wxMenu.new
    :wxMenuBar.append(menu, graph, "Graph")
    :wxMenu.append(graph, 30, "Air Sample")
    :wxMenu.append(graph, 31, "Biomes")
    :wxMenu.append(graph, 32, "Life Forms")
    :wxMenu.append(graph, 33, "Technology")
    menu
  end

  defp option_menu(menu) do
    option = :wxMenu.new
    :wxMenuBar.append(menu, option, "Option")
    :wxMenu.appendCheckItem(option, 40, "Go to Events")
    :wxMenu.appendCheckItem(option, 41, "Update Background Windows")
    :wxMenu.appendCheckItem(option, 42, "Compress Edit Screen")
    :wxMenu.appendCheckItem(option, 43, "Enable Music")
    :wxMenu.appendCheckItem(option, 44, "Enable Messages")
    :wxMenu.appendCheckItem(option, 45, "Enable Autoscrolling")
    :wxMenu.appendCheckItem(option, 46, "Save Window Configuration")
    menu
  end

  defp speed_menu(menu) do
    speed = :wxMenu.new
    :wxMenuBar.append(menu, speed, "Speed")
    :wxMenu.append(speed, 50, "Pause")
    :wxMenu.append(speed, 51, "Maximum Speed")
    :wxMenu.append(speed, 52, "Increase Speed")
    :wxMenu.append(speed, 53, "Decrease Speed")
    menu
  end

  defp dsnd_menu(menu) do
    dsnd = :wxMenu.new
    :wxMenuBar.append(menu, dsnd, "Data-Sound")
    :wxMenu.appendCheckItem(dsnd, 60, "Tone Monitor")
    :wxMenu.appendCheckItem(dsnd, 61, "Play Data Song")
    :wxMenu.appendCheckItem(dsnd, 62, "Altitude")
    :wxMenu.appendCheckItem(dsnd, 63, "Air Temperature")
    :wxMenu.appendCheckItem(dsnd, 64, "Rainfall")
    :wxMenu.appendCheckItem(dsnd, 65, "Sea Temperature")
    :wxMenu.appendCheckItem(dsnd, 66, "Biomass")
    :wxMenu.appendCheckItem(dsnd, 67, "Life")
    :wxMenu.appendCheckItem(dsnd, 68, "Civilisation")
    menu
  end

end
