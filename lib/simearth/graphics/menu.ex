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

  # Close button selected
  def resolve_menu(4, _frame, state) do
    # We need to have a save dialogue here
    IO.puts("Exit selected. Exiting.")
    {:stop, :normal, state}
  end

  # User requests edit window when it exists
  def resolve_menu(10, _frame, state=%{edit: _edit}) do
    # TODO: Bring the edit window to focus
    # This will have to be done through getchildren as the item in the map is a PID
    {:noreply, state}
  end

  # User otherwise requests edit window
  def resolve_menu(10, frame, state) do
    {:noreply, Map.put(state, :edit, Simearth.Graphics.Window.Edit.start_link(frame))}
  end

  # User requests map window when it exists
  def resolve_menu(11, _frame, state=%{map: _map}) do
    # TODO: Bring the map window to focus
    # This will have to be done through getchildren as the item in the map is a PID
    {:noreply, state}
  end

  # User otherwise requests map window
  def resolve_menu(11, frame, state) do
    {:noreply, Map.put(state, :map, Simearth.Graphics.Window.Map.start_link(frame))}
  end

  # User requests gaia window when it exists
  def resolve_menu(12, _frame, state=%{gaia: _gaia}) do
    # TODO: Bring the gaia window to focus
    # This will have to be done through getchildren as the item in the map is a PID
    {:noreply, state}
  end

  # User otherwise requests gaia window
  def resolve_menu(12, frame, state) do
    {:noreply, Map.put(state, :gaia, Simearth.Graphics.Window.Gaia.start_link(frame))}
  end

    # User requests history window when it exists
  def resolve_menu(13, _frame, state=%{history: _history}) do
    # TODO: Bring the history window to focus
    # This will have to be done through getchildren as the item in the map is a PID
    {:noreply, state}
  end

  # User otherwise requests history window
  def resolve_menu(13, frame, state) do
    {:noreply, Map.put(state, :history, Simearth.Graphics.Window.History.start_link(frame))}
  end

  # User requests report window when it exists
  def resolve_menu(14, _frame, state=%{report: _report}) do
    # TODO: Bring the report window to focus
    # This will have to be done through getchildren as the item in the map is a PID
    {:noreply, state}
  end

  # User otherwise requests report window
  def resolve_menu(14, frame, state) do
    {:noreply, Map.put(state, :report, Simearth.Graphics.Window.Report.start_link(frame))}
  end

  # User requests tutorial window when it exists
  def resolve_menu(15, _frame, state=%{tutorial: _tutorial}) do
    # TODO: Bring the tutorial window to focus
    # This will have to be done through getchildren as the item in the map is a PID
    {:noreply, state}
  end

  # User otherwise requests tutorial window
  def resolve_menu(15, frame, state) do
    {:noreply, Map.put(state, :tutorial, Simearth.Graphics.Window.Tutorial.start_link(frame))}
  end

  # User requests glossary window when it exists
  def resolve_menu(16, _frame, state=%{glossary: _glossary}) do
    # TODO: Bring the glossary window to focus
    # This will have to be done through getchildren as the item in the map is a PID
    {:noreply, state}
  end

  # User otherwise requests glossary window
  def resolve_menu(16, frame, state) do
    {:noreply, Map.put(state, :glossary, Simearth.Graphics.Window.Glossary.start_link(frame))}
  end

  # Options & data sound (checkable menus)
  def resolve_menu(a, frame, state) when div(a, 10) in [4,6] do
    menu_item = :wxFrame.getMenuBar(frame)
    |> :wxMenuBar.getMenu(div(a, 10))
    |> :wxMenu.getMenuItems
    |> Enum.at(rem(a, 10))
    IO.puts("#{:wxMenuItem.getText(menu_item)} #{if !:wxMenuItem.isChecked(menu_item), do: "un"}checked")
    {:noreply, state}
  end

  # All other menu items
  def resolve_menu(a, frame, state) do
    menu_item = :wxFrame.getMenuBar(frame)
    |> :wxMenuBar.getMenu(div(a, 10))
    |> :wxMenu.getMenuItems
    |> Enum.at(rem(a, 10))
    IO.puts("#{:wxMenuItem.getText(menu_item)} clicked")
    {:noreply, state}
  end
end
