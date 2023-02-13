defmodule ArrayDiff do
  def array_diff(a, b) do
    Enum.filter(a, &not_member(b, &1))
  end

  def not_member(lista, x) do
    !Enum.member?(lista,x)
  end
end
