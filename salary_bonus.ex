defmodule SalaryBonus do
  def run do
    _nome = IO.read(:stdio, :line) |> String.trim()
    {salary, _} = IO.read(:stdio, :line) |> Float.parse()
    {sales, _} = IO.read(:stdio, :line) |> Float.parse()
    bonus = sales * 0.15
    total = salary + bonus
    IO.puts("TOTAL = R$ #{:erlang.float_to_binary(total, [decimals: 2])}")
  end
end

SalaryBonus.run()
