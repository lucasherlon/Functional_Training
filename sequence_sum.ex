defmodule Sequencesum do
  def run do
    IO.read(:stdio, :line)
    |> String.split
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
    |> show_sequence()
  end

  def show_sequence([m,n]) when m <= 0 or n <= 0, do: :exit

  def show_sequence([m,n]) when n >= m do
    Enum.each(m..n, fn m -> IO.write("#{m} ") end)
    num = Enum.reduce(m..n, fn (x,acc) -> x + acc end)
    IO.puts("Sum=#{num}")
    run()
  end

  def show_sequence([m,n]) when n < m do
    Enum.each(n..m, fn x -> IO.write("#{x} ") end)
    num = Enum.reduce(n..m, fn (x,acc) -> x + acc end)
    IO.puts("Sum=#{num}")
    run()
  end
end
Sequencesum.run
