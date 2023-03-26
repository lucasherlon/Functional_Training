defmodule Simplecalculation do
  def run do
    input = IO.read(:stdio, :line)
    input2 = IO.read(:stdio, :line)
    [_a, b, c] = String.trim(input) |> String.split()
    [_d, e, f] = String.trim(input2) |> String.split()
    {x, y} = type_conversion(b, c)
    {w, z} = type_conversion(e, f)
    total = calculate_value({x, y}) + calculate_value({w, z})
    IO.puts("Valor a pagar: R$ #{:erlang.float_to_binary(total, [decimals: 2])}")
  end

  defp type_conversion(a, b) do
    x = String.to_integer(a)
    y = String.to_float(b)
    {x, y}
  end

  defp calculate_value({x, y}), do: x * y
end

Simplecalculation.run()
