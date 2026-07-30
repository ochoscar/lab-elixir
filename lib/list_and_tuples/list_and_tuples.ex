defmodule ListAndTuples do
  @moduledoc false

  # List basics
  IO.puts([104, 101, 108, 108, 111])
  IO.puts(is_list('Hello'))
  IO.puts(length([1, 2, :true, "str"]))

  # List Contactenation
  IO.puts([1, 2, 3] ++ [4, 5, 6])
  #IO.puts([1, true, 2, false, 3, true] -- [true, false])

  # Head and tails
  list = [1, 2, 3]
  IO.puts(hd(list))
  IO.puts(tl(list))

  # Tuple length
  IO.puts(tuple_size({:ok, "hello"}))

  # Tuple append
  tuple = {:ok, "Hello"}
  Tuple.append(tuple, :world)
  IO.puts("#{inspect(tuple)}")

  # Insert a value
  tuple = {:bar, :baz}
  new_tuple_1 = Tuple.insert_at(tuple, 0, :foo)
  new_tuple_2 = put_elem(tuple, 1, :foobar)
  IO.puts("#{inspect(new_tuple_1)}")
  IO.puts("#{inspect(new_tuple_2)}")

end
