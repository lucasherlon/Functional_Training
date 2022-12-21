defmodule Average do
  def run do
    {a, _} = IO.read(:stdio, :line)
    |> Float.parse
    {b, _} = IO.read(:stdio, :line)
    |> Float.parse
    get_average(a,b)
    |> print_num
  end

  def get_average(a, b), do: ((a * 3.5) + (b * 7.5))/11

  def print_num(num) do
    fnum = :erlang.float_to_binary(num,[decimals: 5])
    IO.puts("MEDIA = #{fnum}")
  end
end
Average.run
