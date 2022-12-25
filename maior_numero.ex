defmodule Maiornumero do
  def run do
    IO.read(:stdio, :line)
    |> String.split(" ", trim: true)
    |> Enum.map(&(Integer.parse(&1)))
    |> Enum.map(&(get_number(&1)))
    |> Enum.max
    |> IO.puts()
  end

  def get_number({num, _}), do: num
end

Maiornumero.run
