defmodule DistancePoints do
  def main do
    [x1, y1] = read_point()
    [x2, y2] = read_point()
    distance_points(x1, y1, x2, y2)
    |> show_distance()
  end

  defp read_point() do
    IO.read(:stdio, :line)
      |> String.split()
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.to_float/1)
  end

  defp distance_points(x1, y1, x2, y2) do
    :math.pow(x2-x1, 2) + :math.pow(y2 - y1, 2)
    |> :math.sqrt()
  end

  defp show_distance(num) do
    IO.puts("#{:erlang.float_to_binary(num, [decimals: 4])}")
  end
end
DistancePoints.main
