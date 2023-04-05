defmodule Secrets do
  def secret_add(secret) do
    add = fn x -> x + secret end
    add
  end

  def secret_subtract(secret) do
    subtract = fn x -> x - secret end
    subtract
  end

  def secret_multiply(secret) do
    multiply = fn x -> x * secret end
    multiply
  end

  def secret_divide(secret) do
    divide = fn x -> div(x, secret) end
    divide
  end

  def secret_and(secret) do
    ander = fn x -> Bitwise.band(x, secret) end
    ander
  end

  def secret_xor(secret) do
    xorer = fn x -> Bitwise.bxor(x, secret) end
    xorer
  end

  def secret_combine(secret_function1, secret_function2) do
    combined = fn x ->
              secret_function1.(x)
              |> secret_function2.()
              end
    combined
  end
end
