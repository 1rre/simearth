defmodule Simearth.Simulation.Earth do

  @spec blank_earth({integer, integer}) :: [[0, ...], ...]
  @doc """
  Generate a new earth with a given size. The default size is 256x128
  """
  defmacro blank_earth(size\\{256,128}),
    do: List.duplicate(0, elem(size, 1)) |> List.duplicate(elem(size, 0))

end
