defmodule GrowingSequence do
  def main do
    read_number()
    |> show_sequence()
  end

  defp read_number() do
    IO.read(:stdio, :line)
    |> String.trim
    |> String.to_integer
  end

  defp show_sequence(0), do: :nil
  defp show_sequence(num) do
    Enum.map(1..num-1, &IO.write("#{&1} "))
    IO.puts "#{num}"
    main()
  end
end
GrowingSequence.main
