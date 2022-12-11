defmodule Areaofacircle do
  def run() do
    pi = 3.14159
    {raio, _} = IO.read(:stdio,:line)
    |> Float.parse
    IO.puts("X = #{:erlang.float_to_binary(:math.pow(raio,2) * pi,[decimals: 4])}")
  end
end

Areaofacircle.run()
