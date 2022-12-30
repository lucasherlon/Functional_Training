defmodule Tridu do
  def run do
    IO.read(:stdio, :line)
    |> String.split(" ")
    |> Enum.map(&(String.trim(&1)))
    |> Enum.map(&(String.to_integer(&1)))
    |> third_card
    |> IO.puts
  end

  defp third_card([a,b]) when a == b, do: a
  defp third_card([a,b]) when a > b, do: a
  defp third_card([a,b]) when a < b, do: b
end
Tridu.run
