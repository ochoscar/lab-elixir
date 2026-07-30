defmodule UnlessElseStatement do
  @moduledoc false

  a = false
  unless a === false do
    IO.puts "Condition is not satisfied"
  else
    IO.puts "Condition was satisfied!"
  end
  IO.puts "Outside the unless statement"

end
