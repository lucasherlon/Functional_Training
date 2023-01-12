defmodule Helpphd do
  def start() do
    {x, _} = IO.read(:stdio, :line) |> Integer.parse()
    Enum.each(1..x, fn _ -> run() end)
  end
  
  def run do
    IO.read(:stdio, :line)
    |> split_exp()
    |> parse_exp()
    |> sum()
    |> IO.puts()
  end

  def split_exp(exp) do
    String.split(exp, "+")
  end

  def parse_exp([_h|[]]), do: :skipped
  def parse_exp([h|t]) do
    [h|t]
    |> Enum.map(&String.trim(&1))
    |> Enum.map(&String.to_integer(&1))
  end

  def sum(:skipped), do: "skipped"
  def sum([h|t]) do
    [h|t]
    |> Enum.sum()
  end
end
Helpphd.start
