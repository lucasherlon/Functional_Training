defmodule DDD do
  def run() do
    IO.gets("")
    |> Integer.parse()
    |> get_number()
    |> show_city()
  end

  def get_number({num, _}), do: num

  def show_city(num) do
    case num do
      61 -> IO.puts("Brasilia")
      71 -> IO.puts("Salvador")
      11 -> IO.puts("Sao Paulo")
      21 -> IO.puts("Rio de Janeiro")
      32 -> IO.puts("Juiz de Fora")
      19 -> IO.puts("Campinas")
      27 -> IO.puts("Vitoria")
      31 -> IO.puts("Belo Horizonte")
      _ -> IO.puts("DDD nao cadastrado")
    end
  end
end

DDD.run()
