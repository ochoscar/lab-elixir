defmodule HelloWorldNTimes do
  @moduledoc """
  https://www.hackerrank.com/challenges/fp-hello-world-n-times/problem?isFullScreen=true
  """

  def run() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> hello_n_times()
  end

  def hello_n_times(0), do: nil
  def hello_n_times(n) do
    IO.puts "Hello World"
    hello_n_times(n - 1)
  end

end

HelloWorldNTimes.run()
