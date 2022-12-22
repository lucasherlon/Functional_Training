defmodule Sequence do
  def run do
    loop(1, 60)
  end

  def loop(i, j) do
    IO.puts("I=#{i} J=#{j}")
    i = i + 3
    j = j - 5
    if j >= 0 do
      loop(i, j)
    end
  end
end

Sequence.run
