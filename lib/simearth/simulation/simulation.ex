defmodule Simearth.Simulation do
  use GenServer

  import Simearth.Simulation.Earth#{Cell, Earth}

  @impl true
  def init(_args\\[]) do
    earth = gen_earth()
    {:ok, %{earth: earth}}
  end

  def handle_call(_, state) do
    {:noreply, state}
  end

  def gen_earth(_seed\\:random.seed) do
    # Code to generate earth
    blank_earth()
  end
end
