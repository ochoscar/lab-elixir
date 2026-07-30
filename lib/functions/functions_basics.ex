defmodule Functions.FunctionsBasics do
  @moduledoc false

  # Anonymous Functions
  sum = fn (a, b) -> a + b end
  IO.puts(sum.(1, 5))

  # Using capture operator
  sum = &(&1 + &2)
  IO.puts(sum.(1, 2))

  # Pattern matching
  handle_result = fn
    {var1} -> IO.puts("#{var1} found in a tuple!")
    {var_2, var_3} -> IO.puts("#{var_2} and #{var_3} found!")
  end
  handle_result.({"Hey people"})
  handle_result.({"Hello", "World"})

  # Named functions
  def sum(a, b) do
    a + b
  end

  def sum2(a, b), do: a + b

  # Private functions
  def hello(name), do: phrase() <> name
  defp phrase, do: "Hello "

 # Default arrguments
  def hello2(name, country \\ "en") do
    phrase2(country) <> name
  end

  defp phrase2("en"), do: "Hello, "
  defp phrase2("es"), do: "Hola, "



end


IO.puts(Functions.FunctionsBasics.sum(5, 6))
IO.puts(Functions.FunctionsBasics.sum2(5, 6))
IO.puts(Functions.FunctionsBasics.hello("world"))
IO.puts(Functions.FunctionsBasics.hello2("Ayush", "en"))
IO.puts(Functions.FunctionsBasics.hello2("Ayush"))
IO.puts(Functions.FunctionsBasics.hello2("Ayush", "es"))