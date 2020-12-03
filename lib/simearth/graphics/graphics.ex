defmodule Simearth.Graphics do
@behaviour :wx_object
@title "Simearth"
@size {600, 600}

  def start_link(), do: :wx_object.start_link(__MODULE__, [], [])

  def init(_args \\ []) do
    wx = :wx.new
    frame = :wxFrame.new(wx, 0, @title, size: @size)
    :wxFrame.connect(frame, :size)
    :wxFrame.connect(frame, :close_window)
    :wxFrame.connect(frame, :command_menu_selected)
    :wxFrame.connect(frame, :destroy)
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

  # When the main window is closed
  def handle_event({:wx, _, frame, _, {:wxClose, :close_window}}, state) do
    # TODO: Show save dialogue
    :wxFrame.destroyChildren(frame)
    {:stop, :normal, state}
  end

  # Deal with a menu item being clicked. Delagated to Menu module
  def handle_event({:wx, id, frame, _, {:wxCommand, :command_menu_selected, _, _, _}}, state) do
    Simearth.Graphics.Menu.resolve_menu(id, frame, state)
  end

  def handle_event({:wx, id, _, _, {:wxWindowDestroy, :destroy}}, state) do
    case id do
      10 -> {:noreply, Map.delete(state, :edit)}
      11 -> {:noreply, Map.delete(state, :map)}
      12 -> {:noreply, Map.delete(state, :gaia)}
      13 -> {:noreply, Map.delete(state, :history)}
      14 -> {:noreply, Map.delete(state, :report)}
      15 -> {:noreply, Map.delete(state, :tutorial)}
      16 -> {:noreply, Map.delete(state, :glossary)}
    end
  end

end
