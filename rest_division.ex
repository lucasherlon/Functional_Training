defmodule Restdivision  do
  def run do
    {x, _} = IO.gets("")
    |> Integer.parse
    {y, _} = IO.gets("")
    |> Integer.parse
    get_list(x,y)
    |> Enum.each(fn s -> IO.puts(s) end)
  end

  def get_list(x,y) when x < y do
    x = x + 1
    y = y - 1
    Enum.filter(x..y, fn a -> rem(a,5) == 2 || rem(a,5) == 3 end)
  end

  def get_list(x,y) when x > y do
    x = x - 1
    y = y + 1
    Enum.filter(y..x, fn a -> rem(a,5) == 2 || rem(a,5) == 3 end)
  end
end

Restdivision.run
