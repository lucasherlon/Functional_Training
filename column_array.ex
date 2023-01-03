defmodule ColumnArray do
  def run do
    coluna = read_integer()
    operacao = IO.read(:stdio, :line)|> String.trim
    read_matrix()
    |> Enum.chunk_every(12)
    |> sum_elements(coluna)
    |> realiza_operacao(operacao)
  end

  def read_integer do
    IO.read(:stdio, :line)
    |> String.trim
    |> String.to_integer
  end

  def read_float do
    IO.read(:stdio, :line)
    |> String.trim
    |> String.to_float
  end

  def read_matrix() do
    lista = []
    Enum.map(1..144, fn _x -> lista ++ read_float() end)
  end

  def sum_elements(lista, coluna) do
    Enum.reduce(lista, 0, fn (x, acc) -> Enum.at(x,coluna) + acc end)
  end

  def realiza_operacao(val, operacao) when operacao == "S" do
    IO.puts("#{:erlang.float_to_binary(val, [decimals: 1])}")
  end

  def realiza_operacao(val, operacao) when operacao == "M" do
    media = val / 12
    IO.puts("#{:erlang.float_to_binary(media, [decimals: 1])}")
  end
end
ColumnArray.run
