defmodule Simearth.Graphics do
@behaviour :wx_object
@title "Simearth"
@size {600, 600}

  def start_link(), do: :wx_object.start_link(__MODULE__, [], [])

  def init(_args \\ []) do
    wx = :wx.new
    frame = :wxFrame.new(wx, -1, @title, size: @size)
    :wxFrame.connect(frame, :size)
    :wxFrame.connect(frame, :close_window)
    :wxFrame.connect(frame, :command_menu_selected)
    panel = :wxPanel.new(frame, [])

    Simearth.Graphics.Menu.gen_menu(frame)

    :wxFrame.show(frame)
    state = %{panel: panel}
    {frame, state}
  end

  # When the user changes the size of the window
  def handle_event({:wx, _, _, _, {:wxSize, :size, size, _}}, state = %{panel: panel}) do
    :wxPanel.setSize(panel, size)
    {:noreply, state}
  end
  def handle_event({:wx, _, _, _, {:wxClose, :close_window}}, state), do: {:stop, :normal, state}
  # Exit. Maybe handle this with other events but it does return a different value
  def handle_event({:wx, 4, _, _, {:wxCommand, :command_menu_selected, _, _, _}}, state) do
    # TODO: Show save dialogue here
    IO.puts("Exit selected. Exiting.")
    {:stop, :normal, state}
  end
  # Checkable menu items (options and data sound)
  def handle_event({:wx, a, frame, _, {:wxCommand, :command_menu_selected, _, _, _}}, state) when div(a, 10) in [4,6] do
    menu_item = :wxFrame.getMenuBar(frame)
    |> :wxMenuBar.getMenu(div(a, 10))
    |> :wxMenu.getMenuItems
    |> Enum.at(rem(a, 10))
    IO.puts("#{:wxMenuItem.getText(menu_item)} #{if !:wxMenuItem.isChecked(menu_item), do: "un"}checked")
    {:noreply, state}
  end
  # All other menu items
  def handle_event({:wx, a, frame, _, {:wxCommand, :command_menu_selected, _, _, _}}, state) do
    menu_item = :wxFrame.getMenuBar(frame)
    |> :wxMenuBar.getMenu(div(a, 10))
    |> :wxMenu.getMenuItems
    |> Enum.at(rem(a, 10))
    IO.puts("#{:wxMenuItem.getText(menu_item)} clicked")
    {:noreply, state}
  end
end
