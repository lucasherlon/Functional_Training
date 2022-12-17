defmodule Sumodd do
  def run do
    {x,_} = IO.gets("")
    |> Integer.parse()
    {y,_} = IO.gets("")
    |> Integer.parse()
    get_list(x,y)
    |> Enum.reduce(fn(x, acc) -> x + acc end)
    |> IO.puts()
  end

  def get_list(x,y) when x < y do
    a = x + 1
    b = y - 1
    Enum.filter(a..b, fn r -> rem(r,2) != 0 end)
  end

  def get_list(x,y) when x > y do
    a = x - 1
    b = y + 1
    Enum.filter(a..b, fn r -> rem(r,2) != 0 end)
  end

  def get_list(x,y) when x == y do
    [0]
  end
end

Sumodd.run()
