defmodule UnlessStatement do
  @moduledoc false
  a = false
  unless a === true do
    IO.puts "Condition is not satisfied"
    IO.puts "So this code block is executed"
  end
  IO.puts "Outside the unless statement"

end
