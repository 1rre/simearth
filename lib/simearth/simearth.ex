defmodule Simearth do

  def start do
    {:wx_ref, _, _, g_pid} = Simearth.Graphics.start_link
    Process.group_leader(g_pid, self())
    gui = Process.monitor(g_pid)
    {:ok, sim} = GenServer.start_link(Simearth.Simulation, [])
    {:ok, clk} = :timer.send_interval(1000, :tick)
    loop([gui: gui, sim: sim, clk: clk])
  end

  defp loop(state = [gui: gui, sim: sim, clk: clk]) do
    receive do
      # Closing program
      {:DOWN, ^gui, _, _, _} -> send(sim, :DOWN); :ok
      # Clock ticks
      :tick -> GenServer.cast(sim, :tick); loop(state)
      # Change of clockspeed
      {:speed, change} ->
        if clk != :infinity, do: :timer.cancel(clk)
        Keyword.replace!(state, :clk, GenServer.call(sim, {change, self()}))
        |> loop()
    end
  end
end
