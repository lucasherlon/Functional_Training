defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, volume} = volume_pair
    volume
  end

  def to_milliliter({:cup, volume}), do: {:milliliter, volume * 240}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * 30}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * 5}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * 15}
  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume}

  def from_milliliter(volume_pair, :cup) do
    {_, volume} = volume_pair
    cup_volume = volume / 240
    {:cup, cup_volume}
  end

  def from_milliliter(volume_pair, :fluid_ounce) do
    {_, volume} = volume_pair
    ounce_volume = volume / 30
    {:fluid_ounce, ounce_volume}
  end

  def from_milliliter(volume_pair, :teaspoon) do
    {_, volume} = volume_pair
    teaspoon_volume = volume / 5
    {:teaspoon, teaspoon_volume}
  end

  def from_milliliter(volume_pair, :tablespoon) do
    {_, volume} = volume_pair
    tablespoon_volume = volume / 15
    {:tablespoon, tablespoon_volume}
  end

  def from_milliliter(volume_pair, :milliliter) do
    {_, volume} = volume_pair
    {:milliliter, volume}
  end

  def convert(volume_pair, unit) do
    {_, milliliters} = to_milliliter(volume_pair)
    {_, new_valor} = from_milliliter({:milliliters, milliliters}, unit)
    {unit, new_valor}
  end
end
