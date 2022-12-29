defmodule Test do
  def run do
    IO.read(:stdio, :line)
    |> String.split(" ")
    |> Enum.map(&(String.trim(&1)))
    |> Enum.map(&(String.to_integer(&1)))
    |> validacao
    |> IO.puts
  end

  def validacao([a,b,c,d]) do
      if c > 0 && b > 0 && b > c && d > a && (c + d) > (a + b)
      && rem(a, 2) == 0 do
        "Valores aceitos"
      else
        "Valores nao aceitos"
    end
  end
end
Test.run
