defmodule Processes.StateKVExample do
  @moduledoc false

  IO.puts("INIT")
  {:ok, pid} = Processes.KV.start_link

  # pid now has the pid of our new process that is being
  # used to get and store key value pairs

  # Send a KV pair :hello, "Hello" to the process
  send pid, {:put, :hello, "Hello there"}

  # Ask for the key :hello
  send pid, {:get, :hello, self()}

  # Print all the received messages on the current process.
  #flush()
  IO.puts("READY")
  receive do
    {:hello, msg} -> IO.puts(msg)
  end
end
