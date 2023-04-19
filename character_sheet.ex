defmodule RPG.CharacterSheet do
  def welcome() do
    IO.puts "Welcome! Let's fill out your character sheet together."
  end

  def ask_name() do
    name = IO.gets "What is your character's name?\n"
    name
    |> String.trim()
  end

  def ask_class() do
    class = IO.gets "What is your character's class?\n"
    class
    |> String.trim()
  end

  def ask_level() do
    level = IO.gets "What is your character's level?\n"
    level
    |> String.trim()
    |> String.to_integer()
  end

  def run() do
    welcome()
    name = ask_name()
    class = ask_class()
    level = ask_level()
    map = %{name: name, class: class, level: level}
    IO.puts "Your character: #{inspect(map)}"
    map
  end
end
