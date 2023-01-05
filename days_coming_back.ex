defmodule DaysComingBack do
  def run do
    phrase = "LIFE IS NOT A PROBLEM TO BE SOLVED"
    {num, _} =
      IO.read(:stdio, :line)
      |> Integer.parse
    num
    |> read_phrase(phrase)
  end

  def read_phrase(num, phrase) do
    slice = String.slice(phrase, 0, num)
    slice
    |> String.graphemes()
    |> Enum.each(&IO.write/1)
    IO.puts ""
  end
end
DaysComingBack.run
