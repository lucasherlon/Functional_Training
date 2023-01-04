defmodule ConvertingHex do
  def run do
    {num, _} =
      IO.read(:stdio, :line)
      |> Integer.parse
    num
    |> :erlang.integer_to_list(16)
    |> IO.puts
  end
end
ConvertingHex.run
