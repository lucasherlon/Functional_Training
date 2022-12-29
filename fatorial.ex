defmodule Fatorial do
  def run do
    IO.read(:stdio, :line)
    |> String.trim
    |> String.to_integer
    |> fatorial
    |> IO.puts
  end

  def fatorial(0), do: 1
  def fatorial(num), do: num * fatorial(num - 1)
end
Fatorial.run
