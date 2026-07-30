defmodule Functions.FunctionsExamples do
  @moduledoc false

  # Anonymous Functions
  sum = fn (a, b) -> a + b end
  IO.puts(sum.(1, 5))

  # Using the capture operator
  sum2 = &(&1 + &2)
  IO.puts(sum2.(1, 2))

  # Pattern Matching Functions
  handle_result = fn
    {var1} -> IO.puts("#{var1} found in a tuple!")
    {var_2, var_3} -> IO.puts("#{var_2} and #{var_3} found!")
  end
  handle_result.({"Hey people"})
  handle_result.({"Hello", "World"})

  # Named Functions
  #def function_name(argument_1, argument_2) do
  #  #code to be executed when function is called
  #end

  #def sum(a, b), do: a + b

  defmodule Math do
    def sum3(a, b) do
      a + b
    end
  end

  IO.puts(Math.sum3(5, 6))

  # Private functions
  defmodule Greeter do
    def hello(name), do: phrase() <> name
    defp phrase(), do: "Hello "
  end

  IO.puts Greeter.hello("world")

  # Default arguments

  defmodule Greeter2 do
    def hello(name, country \\ "en") do
      phrase(country) <> name
    end

    defp phrase("en"), do: "Hello, "
    defp phrase("es"), do: "Hola, "
  end

  IO.puts Greeter2.hello("Ayush", "en")
  IO.puts Greeter2.hello("Ayush")
  IO.puts Greeter2.hello("Ayush", "es")

end
