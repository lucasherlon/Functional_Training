defmodule Squaredandcubic do
  def run do
    IO.read(:stdio, :line)
    |> Integer.parse
    |> get_number()
    |> show_numbers(1)
  end

  def get_number({num, _}), do: num

  def show_numbers(lim, num) do
    IO.puts("#{num} #{num * num} #{num * num * num}")
    num = num + 1
    if num <= lim do
      show_numbers(lim, num)
    end
  end
end

Squaredandcubic.run
