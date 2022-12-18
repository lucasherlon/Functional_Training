defmodule Arrayfill do
  def run do
   {num, _} = IO.gets("")
   |> Integer.parse
   for x <- 0..9, do: IO.puts("N[#{x}] = #{dobra(num, x)}")
  end

  def dobra(num, x) do
    num * (2 ** x)
  end

end

Arrayfill.run
