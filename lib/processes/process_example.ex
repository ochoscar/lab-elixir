defmodule Processes.ProcessExample do
  @moduledoc false

  def run do
    ## Working with process and asking if is Alive
    pid = spawn(fn -> 2 * 2 end)
    IO.puts Process.alive?(pid)

    pid = self()
    IO.puts Process.alive?(pid)

    # Send and Receive messages
    send(self(), {:hello, "Hi people"})
    receive do
      {:hello, msg} -> IO.puts(msg)
      {:another_case, _msg} -> IO.puts("This one won't match!")
    end

    #send(self(), {:hello2, "Hi people2"})
    receive do
      {:hello2, msg} -> IO.puts(msg)
    after
      1_000 -> IO.puts "nothing after 1s"
    end

    # Spawn_link propagating failures, crashes the caller by design

    #spawn fn -> raise "oops" end
    spawn_link fn -> raise "oops" end
  end
end
