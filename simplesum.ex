defmodule Simplesum do
  def run do
    {fator1, _} = IO.read(:stdio, :line)
    |> Integer.parse
    {fator2, _} = IO.read(:stdio, :line)
    |> Integer.parse
    IO.puts("SOMA = #{fator1+fator2}")
  end
end

Simplesum.run()
