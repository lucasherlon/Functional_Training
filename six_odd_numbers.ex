defmodule Sixodd do
  def run do
    IO.read(:stdio, :line)
    |> Integer.parse
    |> get_number()
    |> get_list()
  end

  def get_number({num, _}), do: num

  def get_list(num) when rem(num, 2) == 0 do
    start = num + 1
    fin = num + 11
    Enum.filter(start..fin, fn x -> rem(x, 2) != 0 end)
    |> Enum.each(fn x -> IO.puts x end)
  end

  def get_list(num) when rem(num, 2) != 0 do
    fin = num + 11
    Enum.filter(num..fin, fn x -> rem(x, 2) != 0 end)
    |> Enum.each(fn x -> IO.puts x end)
  end
end

Sixodd.run
