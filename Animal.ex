defmodule Animal do
  def run do
    cat1 = IO.read(:stdio, :line) |> String.trim()
    cat2 = IO.read(:stdio, :line) |> String.trim()
    cat3 = IO.read(:stdio, :line) |> String.trim()
    get_animal({cat1, cat2, cat3})
  end

  def get_animal({a,b,c}) do
    case {a,b,c} do
      {"vertebrado", "ave", "carnivoro"} -> IO.puts("aguia")
      {"vertebrado", "ave", "onivoro"} -> IO.puts("pomba")
      {"vertebrado", "mamifero", "onivoro"} -> IO.puts("homem")
      {"vertebrado", "mamifero", "herbivoro"} -> IO.puts("vaca")
      {"invertebrado", "inseto", "hematofago"} -> IO.puts("pulga")
      {"invertebrado", "inseto", "herbivoro"} -> IO.puts("lagarta")
      {"invertebrado", "anelideo", "hematofago"} -> IO.puts("sanguessuga")
      {"invertebrado", "anelideo", "onivoro"} -> IO.puts("minhoca")
    end
  end
end

Animal.run
