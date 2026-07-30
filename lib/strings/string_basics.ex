defmodule Strings.StringBasics do
  @moduledoc false
  # String basics
  str = "Hello world"
  IO.puts(str)

  # String empty
  a = ""
  if String.length(a) === 0 do
    IO.puts("a is an empty string")
  end

  # String interpolation
  x = "Apocalypse"
  y = "X-men #{x}"
  IO.puts(y)

  # String concatenation
  x = "Dark"
  y = "Knight"
  z = x <> " " <> y
  IO.puts(z)

  # String length
  IO.puts(String.length("Hello"))

  # Reverse string
  IO.puts(String.reverse("Elixir"))

  # String comparision
  var_1 = "Hello world"
  var_2 = "Hello Elixir"
  if var_1 === var_2 do
    IO.puts("#{var_1} and #{var_2} are the same")
  else
    IO.puts("#{var_1} and #{var_2} are not the same")
  end

  # String matching
  IO.puts(String.match?("foo", ~r/foo/))
  IO.puts(String.match?("bar", ~r/foo/))
  IO.puts("foo" =~ ~r/foo/)

  # Binaries
  IO.puts(<< 0, 1 >> <> << 2, 3 >>)

  IO.puts(<< 256 >>) # truncated, it'll print << 0 >>
  IO.puts(<< 256 :: size(16) >>) #Takes 16 bits/2 bytes, will print << 1, 0 >>

  IO.puts(<< 256 :: utf8 >>)

  # Bitstring
  bs = << 1 :: size(1) >>
  #IO.puts(bs)
  IO.puts(is_binary(bs))
  IO.puts(is_bitstring(bs))

end
