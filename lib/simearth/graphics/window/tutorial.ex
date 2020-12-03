defmodule Simearth.Graphics.Window.Tutorial do
@behaviour :wx_object
@title "Simearth | Tutorial"
@size {600, 600}

  def start_link(parent), do: :wx_object.start_link(__MODULE__, [parent], [])

  def init([parent]) do
    window = :wxWindow.new(parent, 15)

    frame = :wxFrame.new(window, 15, @title, size: @size)
    :wxFrame.connect(frame, :size)
    :wxFrame.connect(frame, :close_window)
    panel = :wxPanel.new(frame, [])

    :wxFrame.show(frame)
    state = %{panel: panel}
    {frame, state}
  end

  def handle_event({:wx, _, _, _, {:wxSize, :size, size, _}}, state = %{panel: panel}) do
    :wxPanel.setSize(panel, size)
    {:noreply, state}
  end

  def handle_event({:wx, _, frame, _, {:wxClose, :close_window}}, state) do
    :wxFrame.destroy(frame)
    {:stop, :normal, state}
  end
end
