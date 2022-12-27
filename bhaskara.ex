defmodule Bhaskara do
  def run do
    IO.read(:stdio, :line)
    |> String.split(" ", trim: true)
    |> Enum.map(&(Float.parse(&1)))
    |> Enum.map(&(get_number(&1)))
    |> delta()
  end

  def get_number({num, _}), do: num

  def delta([a,b,c]) do
    b ** 2 - (4 * a * c)
    |> bhaskara(a, b)
  end

  def bhaskara(_num, a, _b) when a == 0, do: IO.puts("Impossivel calcular")

  def bhaskara(num, _a, _b) when num < 0, do: IO.puts("Impossivel calcular")

  def bhaskara(num, a, b) when num == 0 do
    raiz = (-b + :math.sqrt(num)) / (2 * a)
    IO.puts("R1 = #{:erlang.float_to_binary(raiz ,[decimals: 5])}")
  end

  def bhaskara(num, a, b) do
    raiz1 = (-b + :math.sqrt(num)) / (2 * a)
    raiz2 = (-b - :math.sqrt(num)) / (2 * a)
    IO.puts("R1 = #{:erlang.float_to_binary(raiz1 ,[decimals: 5])}")
    IO.puts("R2 = #{:erlang.float_to_binary(raiz2 ,[decimals: 5])}")
  end
end

Bhaskara.run
