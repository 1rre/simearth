defmodule Simearth.Simulation.Cell do
  @spec altitude(integer) :: byte
  @doc """
  The altitude of a cell.
  -9600m to 9600m in 75m steps.
  """
  defmacro altitude(cell) do
    <<alt::8, _::56>> = <<cell::64>>
    alt
  end

  @spec avg_temp(integer) :: byte
  @doc """
  The average air temperature in a cell.
  200K-455K in 1K steps.
  """
  defmacro avg_temp(cell) do
    <<_::8, temp::8, _::48>> = <<cell::64>>
    temp
  end

  @spec rainfall(integer) :: byte
  @doc """
  The mean rainfall in a cell.
  0-3825mm in 15mm steps.
  """
  defmacro rainfall(cell) do
    <<_::16, rain::8, _::40>> = <<cell::64>>
    rain
  end

  @spec land_spd(integer) :: byte
  @doc """
  The tectonic drift speed of a cell.
  Units are TBC.
  """
  defmacro land_spd(cell) do
    <<_::24, speed::4, _::36>> = <<cell::64>>
    speed
  end

  @spec land_dir(integer) :: byte
  @doc """
  The tectonic drift speed of a cell.
  Units are TBC.
  """
  defmacro land_dir(cell) do
    <<_::28, dir::4, _::32>> = <<cell::64>>
    dir
  end

  @spec wind_spd(integer) :: byte
  @doc """
  The wind speed in a cell.
  Units TBC.
  Hurricanes etc. will be classed as events.
  """
  defmacro wind_spd(cell) do
    <<_::32, speed::4, _::28>> = <<cell::64>>
    speed
  end

  @spec wind_dir(integer) :: byte
  @doc """
  The direction in which the wind is blowing.
  Units tbc.
  """
  defmacro wind_dir(cell) do
    <<_::36, dir::4, _::24>> = <<cell::64>>
    dir
  end
end
