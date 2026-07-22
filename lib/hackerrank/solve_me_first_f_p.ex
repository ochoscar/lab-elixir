defmodule SolveMeFirstFP do
  @moduledoc false

  def read_number do
    IO.gets("Enter your number: ")
    |> String.trim()
    |> String.to_integer()
  end

  def run do
    n1 = read_number()
    n2 = read_number()
    IO.puts "#{n1 + n2}"
  end
end

SolveMeFirstFP.run()
