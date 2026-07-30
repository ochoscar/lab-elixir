defmodule Strings.CharList do
  @moduledoc false
  IO.puts(~c"Hello")
  IO.puts(is_list(~c"Hello"))

  IO.puts(is_list(to_charlist("hełło")))
  IO.puts(is_binary(to_string(~c"hełło")))

end
