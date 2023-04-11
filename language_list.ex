defmodule LanguageList do
  def new(), do: []

  def add(list, language) do
    new_list = [language | list]
    new_list
  end

  def remove(list) do
    [head | tail] = list
    tail
  end

  def first(list) do
    [head | tail] = list
    head
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
