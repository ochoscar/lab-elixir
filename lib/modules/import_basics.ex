defmodule Modules.ImportBasics do
  @moduledoc false

  # Import functions from Foo so they can be called without the `Foo.` prefix
  #import Foo

  import List, only: [duplicate: 2]
  #import Integer, only: :macros

  IO.inspect(duplicate("hi", 3))

end
