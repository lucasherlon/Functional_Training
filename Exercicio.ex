defmodule Atividade do
    def comum(l1, l2) do
        l1
        |> Enum.filter(fn x -> Enum.member?(l2, x) end)
        |> Enum.uniq()
        |> Enum.sort()
        |> IO.inspect()
    end
end

Atividade.comum([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 6, 5, 653, 121])
