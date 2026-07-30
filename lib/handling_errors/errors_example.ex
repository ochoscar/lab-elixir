defmodule ErrorsExample do
  @moduledoc false

  # GENERATING ERRORS

  #IO.puts(1 + "Hello")

  #Runtime Error with just a message
  #raise "oops"  # ** (RuntimeError) oops

  defmodule MyError do
    defexception message: "default message"
  end

  #raise MyError  # Raises error with default message
  #raise MyError, message: "custom message"  # Raises error with custom message


  # RESCUING ERRORS
  err = try do
    raise "oops"
  rescue
    e in RuntimeError -> e
  end
  IO.puts(err.message)

  err = try do
    1 + "Hello"
  rescue
    RuntimeError -> "You've got a runtime error!"
    ArithmeticError -> "You've got a Argument error!"
  end
  IO.puts(err)



  # THROWS
  val = try do
    Enum.each 20..100, fn(x) ->
      if rem(x, 13) == 0, do: throw(x)
    end
    "Got nothing"
  catch
    x -> "Got #{x}"
  end
  IO.puts(val)



  # AFTER
  {:ok, file} = File.open "sample", [:utf8, :write]
  try do
    IO.write file, "olá"
    raise "oops, something went wrong"
  after
    File.close(file)
  end






  # EXITS
  spawn_link fn -> exit(1) end

  val = try do
    exit "I am exiting"
  catch
    :exit, _ -> "not really"
  end

  IO.puts(val)
end
