defmodule Simearth do

  def start do
    {:wx_ref, _, _, g_pid} = Simearth.Graphics.start_link
    gui = Process.monitor(g_pid)
    sim = GenServer.start_link(Simearth.Simulation, [])
    {:ok, clk} = :timer.send_interval(1000, :tick)
    loop([gui: gui, sim: sim, clk: clk])
  end

  defp loop(state = [gui: gui, sim: _, clk: _]) do
    receive do
      {:DOWN, ^gui, _, _, _} -> :ok
      :tick -> IO.puts("clock is ticking"); loop(state)
    end
  end
end
