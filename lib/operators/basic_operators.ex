defmodule Operators.BasicOperators do
  @moduledoc false

  # Aritmetics

  a = 10
  b = 20

  #Addition
  IO.puts("Addition " <> to_string(a+b))

  #Subtraction
  IO.puts("Subtraction " <> to_string(a-b))

  #Multiplication
  IO.puts("Multiplication " <> to_string(a*b))

  #Division
  IO.puts("Division " <> to_string(a/b))

  #Integer division
  IO.puts("Integer division " <> to_string(div(a,b)))

  #Modulo
  IO.puts("Modulo " <> to_string(rem(a,b)))

  # Comparision

  a = 10
  b = 20

  IO.puts("a == b " <> to_string(a == b))

  IO.puts("a != b " <> to_string(a != b))

  IO.puts("a === b " <> to_string(a === b))

  IO.puts("a !== b" <> to_string(a !== b))

  IO.puts("a > b " <> to_string(a > b))

  IO.puts("a < b " <> to_string(a < b))

  IO.puts("a >= b " <> to_string(a >= b))

  IO.puts("a <= b " <> to_string(a <= b))


  # Logical

  a = true
  b = 20

  IO.puts("a and b " <> to_string(a and b))

  IO.puts("a or b " <> to_string(a or b))

  IO.puts("not a " <> to_string(not a))

  IO.puts("b && a" <> to_string(b && a))

  IO.puts("b || a " <> to_string(b || a))

  IO.puts("!a " <> to_string(!a))


  # Bitwise

  a = 5
  b = 6

  import Bitwise

  IO.puts("a &&& b " <> to_string(a &&& b))

  IO.puts("a ||| b " <> to_string(a ||| b))

  IO.puts("a >>> b " <> to_string(a >>> b))

  IO.puts("a <<< b" <> to_string(a <<< b))

  IO.puts("a ^^^ b " <> to_string(bxor(a, b)))

  IO.puts("~~~a " <> to_string(bnot(a)))



end
