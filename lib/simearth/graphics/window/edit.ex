defmodule Simearth.Graphics.Window.Edit do
@behaviour :wx_object
@title "Simearth | Edit"
@size {600, 600}

  def start_link(parent), do: :wx_object.start_link(__MODULE__, [parent], [])

  def init([parent]) do
    window = :wxWindow.new(parent, 10)
    
    frame = :wxFrame.new(window, 10, @title, size: @size)
    :wxFrame.connect(frame, :size)
    :wxFrame.connect(frame, :close_window)
    panel = :wxPanel.new(frame, pos: {200,0}, size: {400,600})
    ctrl_panel = :wxPanel.new(frame, pos: {0,0}, size: {200,600})
    ctrl_box = :wxStaticBox.new(ctrl_panel, 0, "Edit Controls", pos: {0,0}, size: {200,600})
    :wxFrame.show(frame)
    state = %{panel: panel, ctrl_panel: ctrl_panel, controls: ctrl_box}
    {frame, state}
  end

  def handle_event({:wx, _, _, _, {:wxSize, :size, {x,y}, _}}, state = %{panel: panel, ctrl_panel: ctrl_panel, controls: controls}) do
    # How to scale the panels?
    # This won't work if the size is <200
    # Currently I'm split between setting a min size & setting the size to the min of width & 200 or something
    :wxStaticBox.setSize(controls, {200, y})
    :wxPanel.setSize(panel, {x - 200, y})
    :wxPanel.setSize(ctrl_panel, {200, y})
    {:noreply, state}
  end

  def handle_event({:wx, _, frame, _, {:wxClose, :close_window}}, state) do
    :wxFrame.destroy(frame)
    {:stop, :normal, state}
  end
end
