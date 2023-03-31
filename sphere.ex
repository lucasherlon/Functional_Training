defmodule Sphere do
  def run do
    {radius, _} = IO.read(:stdio, :line) |> Integer.parse()
    volume = (4/3) * 3.14159 * :math.pow(radius, 3)
    IO.puts("VOLUME = #{:erlang.float_to_binary(volume, [decimals: 3])}")
  end
end
Sphere.run()
