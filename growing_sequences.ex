defmodule GrowingSequence do
  def main do
    read_number()
    |> show_sequence()
  end

  defp read_number() do
    {num, _} = 
      IO.read(:stdio, :line)
      |> Integer.parse
    num
  end

  defp show_sequence(0), do: :nil
  defp show_sequence(num) do
    Enum.each(1..num-1, &IO.write("#{&1} "))
    IO.puts "#{num}"
    main()
  end
end
GrowingSequence.main
