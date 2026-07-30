defmodule Structs.StructsExamples do
  @moduledoc false

  john  = %User{}
  #ayush = %User{name: "Ayush", age: 20}
  #megan = %User{name: "Megan"}

  # Accesing fields
  IO.puts(john.name)
  IO.puts(john.age)

  # Updating fields
  meg = %{john | name: "Meg"}

  IO.puts(meg.name)
  IO.puts(meg.age)
end
