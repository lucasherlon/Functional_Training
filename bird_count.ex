defmodule BirdCount do
  def today([]), do: :nil
  def today([head | _]), do: head

  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]), do: [head+1 | tail]

  def has_day_without_birds?(list), do: Enum.member?(list, 0)

  def total(list), do: Enum.sum(list)

  def busy_days([]), do: 0
  def busy_days(list) do
    busy = Enum.filter(list, fn x -> x >= 5 end) |> Enum.count()
    busy
  end
end
