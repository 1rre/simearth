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

  def handle_event({:wx, _, _, _, {:wxSize, :size, size, _}}, state = %{panel: panel}) do
    :wxPanel.setSize(panel, size)
    {:noreply, state}
  end
  #{:wxCommand, :command_menu_selected, _, _, _}
  def handle_event({:wx, _, _, _, {:wxClose, :close_window}}, state), do: {:stop, :normal, state}
  def handle_event({:wx, a, _, _, {:wxCommand, :command_menu_selected, _, _, _}}, state) do
    IO.puts(a)
    {:noreply, state}
  end
  def handle_event({:wx, 4, _, _, {:wxCommand, :command_menu_selected, _, _, _}}, state) do
    # Show save dialogue
    # then
    {:stop, :normal, state}
  end
end
