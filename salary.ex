defmodule Salary do
  def run do
    {number, _} = IO.read(:stdio, :line) |> Integer.parse()
    {hours, _} = IO.read(:stdio, :line) |> Integer.parse()
    {amount, _} = IO.read(:stdio, :line) |> Float.parse()
    salary = amount * hours

    IO.puts("NUMBER = #{number}")
    IO.puts("SALARY = U$ #{:erlang.float_to_binary(salary, [decimals: 2])}")

  end
end

Salary.run()
