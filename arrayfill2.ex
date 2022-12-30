defmodule Arrayfill do
  def run do
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.to_integer()
    |> filling
  end

  defp filling(a) do
    Enum.map(0..999, fn x -> IO.puts("N[#{x}] = #{rem(x,a)}") end)
  end
end
Arrayfill.run
