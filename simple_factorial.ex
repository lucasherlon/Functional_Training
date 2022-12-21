defmodule Fatorial do
  def run do
    IO.gets("")
    |> Integer.parse
    |> get_number
    |> factorial
    |> IO.puts
  end

  def get_number({num, _}), do: num
  def factorial(0), do: 1
  def factorial(n) when n > 0, do: n * factorial(n - 1)
end
Fatorial.run
