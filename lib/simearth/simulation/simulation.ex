defmodule Simearth.Simulation do
  use GenServer

  import Simearth.Simulation.Earth#{Cell, Earth}

  @impl true
  def init(_args\\[]) do
    earth = gen_earth()
    {:ok, %{earth: earth, time: 0, speed: 1000}}
  end

  @impl true
  # Earth in current state is requested
  def handle_call(:earth, _, state=%{earth: earth}) do
    {:reply, earth, state}
  end

  # Pause (don't return a timer)
  def handle_call({:pause, _}, _, state) do
    IO.puts("speed: 0")
    {:reply, :infinity, put_in(state, [:speed], 0)}
  end
  # Max speed (1ms per tick)
  def handle_call({:max, dest}, _, state) do
    IO.puts("speed: 1")
    {:ok, new_timer} = :timer.send_interval(1, dest, :tick)
    {:reply, new_timer, put_in(state, [:speed], 1)}
  end
  # Decrease speed on pause (stay paused)
  def handle_call({:down, _}, _, state=%{speed: 0}) do
    IO.puts("speed: 0")
    {:reply, :infinity, state}
  end
  # Decrease speed (interval multiplied by 10)
  def handle_call({:down, dest}, _, state=%{speed: speed}) do
    IO.puts("speed: #{speed * 10}")
    {:ok, new_timer} = :timer.send_interval(speed * 10, dest, :tick)
    {:reply, new_timer, update_in(state, [:speed], & &1 * 10)}
  end
  # Increase speed from paused (1s per tick)
  def handle_call({:up, dest}, _, state=%{speed: 0}) do
    IO.puts("speed: 1000")
    {:ok, new_timer} = :timer.send_interval(1000, dest, :tick)
    {:reply, new_timer, put_in(state, [:speed], 1000)}
  end
  # Increase speed from max (stay at 1ms per tick)
  def handle_call({:up, dest}, _, state=%{speed: 1}) do
    IO.puts("speed: 1")
    {:ok, new_timer} = :timer.send_interval(1, dest, :tick)
    {:reply, new_timer, state}
  end
  # Increase speed (multiple divided by 10)
  def handle_call({:up, dest}, _, state=%{speed: speed}) do
    IO.puts("speed: #{div(speed, 10)}")
    {:ok, new_timer} = :timer.send_interval(div(speed, 10), dest, :tick)
    {:reply, new_timer, update_in(state, [:speed], &div(&1, 10))}
  end

  @impl true
  # Program is closing
  def handle_cast(:close, state=%{time: time}) do
    IO.puts("Stopping simulation at tick #{time}")
    {:stop, :normal, state}
  end

  # Save world
  def handle_cast({:save, _path}, state) do
    # Save the file in the given path
    {:noreply, state}
  end

  # Clock is advancing
  def handle_cast(:tick, state=%{time: time}) do
    # I need to investigate whether increasing the timestep is necessary vs increasing the clockspeed
    # The latter is more desirable due to consistent simulation but worse for performance
    # Do whatever to advance the simulation state
    IO.puts("clock: #{time}")
    {:noreply, update_in(state, [:time], & &1 + 1)}
  end

  def gen_earth(_seed\\:random.seed) do
    # Code to generate earth
    blank_earth()
  end
end
