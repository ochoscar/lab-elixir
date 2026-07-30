defmodule KeywordList do
  @moduledoc false

  # Associative list is formed by two-items per position into the tuple
  # First is atom and there is a special notation for simplify write the atoms
  list_1 = [{:a, 1}, {:b, 2}]
  list_2 = [a: 1, b: 2]
  IO.puts(list_1 == list_2)

  # Retrive item
  list = [a: 1, b: 2]
  IO.puts(list[:a])



  # Accessing a key
  kl = [a: 1, a: 2, b: 3]
  IO.puts(Keyword.get(kl, :a))
  IO.puts(Keyword.values(kl))

  # Inserting a key
  kl = [a: 1, a: 2, b: 3]
  kl_new = Keyword.put_new(kl, :c, 5)
  IO.puts(Keyword.get(kl_new, :c))

  # Deleting a key
  kl = [a: 1, a: 2, b: 3, c: 0]
  kl = Keyword.delete_first(kl, :b)
  kl = Keyword.delete(kl, :a)

  IO.puts(Keyword.get(kl, :a))
  IO.puts(Keyword.get(kl, :b))
  IO.puts(Keyword.get(kl, :c))

end
