defmodule Simpleproduct do
  def run do
     {fat1,_} = IO.read(:stdio, :line)
     |> Integer.parse
     {fat2,_} = IO.read(:stdio, :line)
     |> Integer.parse
     IO.puts("PROD = #{fat1*fat2}")
  end
end

Simpleproduct.run
