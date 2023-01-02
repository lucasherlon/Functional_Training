defmodule ScoreValidation do
  def run do
    read_number()
    |> validate_number()
    |> media_aritmetica()
  end

  defp validate_number(num) when num < 0 or num > 10  do
    IO.puts("nota invalida")
    read_number()
  end

  defp validate_number(num), do: num

  defp read_number() do
    num =
      IO.read(:stdio, :line)
      |> String.trim()
      |> String.to_float
    validate_number(num)
  end

  defp media_aritmetica(num) do
    num2 = read_number()
    media = (num + num2) / 2
    IO.puts("media = #{:erlang.float_to_binary(media, [decimals: 2])}")
  end
end
ScoreValidation.run
