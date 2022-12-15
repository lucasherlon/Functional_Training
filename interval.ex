defmodule Interval do
  def run() do
    IO.read(:stdio, :line)
    |> Float.parse()
    |> get_number()
    |> get_interval()
  end

  def get_number({num, _}), do: num

  def get_interval(num) do
    if num >= 0 && num <= 25 do
      IO.puts("Intervalo [0,25]")
    end
    if num > 25 && num <= 50 do
      IO.puts("Intervalo (25,50]")
    end
    if num > 50 && num <= 75 do
      IO.puts("Intervalo (50,75]")
    end
    if num > 75 && num<=100 do
      IO.puts("Intervalo (75,100]")
    end
    if num < 0 || num > 100 do
      IO.puts("Fora de intervalo")
    end
  end

end

Interval.run
