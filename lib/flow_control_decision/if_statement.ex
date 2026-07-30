defmodule IfStatemente do
  @moduledoc false
  a = true
  if a === true do
    IO.puts "Variable a is true!"
    IO.puts "So this code block is executed"
  end

  IO.puts "Outside the if statement"

end
