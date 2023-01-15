defmodule Quadrant do
  def run do
    IO.read(:stdio, :line)
    |> String.split
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
    |> coordinates()
    |> show_result()
  end

  def coordinates([x,y]) when x == 0 or y == 0, do: :exit
  def coordinates([x,y]) when x > 0 and y > 0, do: "primeiro"
  def coordinates([x,y]) when x < 0 and y > 0, do: "segundo"
  def coordinates([x,y]) when x < 0 and y < 0, do: "terceiro"
  def coordinates([x,y]) when x > 0 and y < 0, do: "quarto"

  def show_result(:exit), do: :exit
  def show_result(string) do
    IO.puts string
    run()
  end
end
Quadrant.run
