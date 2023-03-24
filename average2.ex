defmodule AverageTwo do
  def run do
    {x, _} = IO.read(:stdio, :line) |> Float.parse()
    {y, _} = IO.read(:stdio, :line) |> Float.parse()
    {z, _} = IO.read(:stdio, :line) |> Float.parse()
    media = calculate_media(x, y, z)
    IO.puts("MEDIA = #{:erlang.float_to_binary(media, [decimals: 1])}")
  end

  defp calculate_media(x, y, z) do
    (x * 2 + y * 3 + z * 5) / 10.0
  end
end

AverageTwo.run()
