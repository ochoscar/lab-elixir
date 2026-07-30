defmodule Sigils.SigilsExample do
  @moduledoc false

  # A regular expression that matches strings which contain "foo" or
  # "bar":
  regex = ~r/foo|bar/
  IO.puts("foo" =~ regex)
  IO.puts("baz" =~ regex)

  # Strings
  new_string = ~s(this is a string with "double" quotes, not 'single' ones)
  IO.puts(new_string)

  # Char Lists
  new_char_list = ~c(this is a char list containing 'single quotes')
  IO.puts(new_char_list)

  # Word Lists
  new_word_list = ~w(foo bar bat)
  IO.puts(new_word_list)

  # Interpolation and Escaping in Sigils
  ~s(String with escape codes \x26 #{"inter" <> "polation"});
  # "String with escape codes & interpolation"
  ~S(String without escape codes \x26 without #{interpolation});
  # "String without escape codes \\x26 without \#{interpolation}"

  # Custom Sigil
  import Sigils.CustomSigil
  IO.puts(~u/tutorials point/)

end
