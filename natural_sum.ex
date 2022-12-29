defmodule NaturalSum do
  def run do
    IO.read(:stdio, :line)
    |> String.split()
    |> Enum.map(&(String.to_integer(&1)))
    |> soma_natural()
    |> IO.puts
  end

  def soma_natural([a,b]) do
    range = b - a + 1
    ((a + b) * range)/2
    |> trunc()
  end
end
NaturalSum.run
