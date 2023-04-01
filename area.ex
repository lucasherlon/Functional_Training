defmodule Area do
  def run do
    input = IO.read(:stdio, :line)
    [a, b, c] = parse_input(input)
    triangle = area_triangle(a, c)
    circle = area_circle(c)
    trapezium = area_trapezium(a, b, c)
    square = area_square(b)
    retangle = area_retangle(a, b)

    IO.puts("TRIANGULO: #{:erlang.float_to_binary(triangle, [decimals: 3])}")
    IO.puts("CIRCULO: #{:erlang.float_to_binary(circle, [decimals: 3])}")
    IO.puts("TRAPEZIO: #{:erlang.float_to_binary(trapezium, [decimals: 3])}")
    IO.puts("QUADRADO: #{:erlang.float_to_binary(square, [decimals: 3])}")
    IO.puts("RETANGULO: #{:erlang.float_to_binary(retangle, [decimals: 3])}")
  end

  defp parse_input(input) do
    [a, b, c] = String.trim(input)
                |> String.split()
                |> Enum.map(&(String.to_float/1))
    [a, b, c]
  end

  defp area_square(b), do: b * b

  defp area_triangle(a, c), do: (a * c) / 2

  defp area_circle(c), do: 3.14159 * c * c

  defp area_trapezium(a, b, c), do: ((a + b) * c) / 2

  defp area_retangle(a, b), do: a* b
end

Area.run()
