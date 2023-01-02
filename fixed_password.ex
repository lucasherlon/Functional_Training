defmodule Password do
  def main do
    read_number()
    |> validation()
    |> print_message()
  end

  defp read_number() do
    num =
      IO.read(:stdio, :line)
      |> String.trim
      |> String.to_integer
    num
  end

  defp validation(num) when num == 2002, do: :ok
  defp validation(_num), do: :error

  defp print_message(:ok), do: IO.puts "Acesso Permitido"
  defp print_message(:error) do
    IO.puts "Senha Invalida"
    main()
  end
end
Password.main
