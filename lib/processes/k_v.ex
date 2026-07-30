defmodule Processes.KV do
  @moduledoc false

  def start_link do
    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        return_map = %{key => Map.get(map, key)}
        IO.puts("message sended")
        IO.puts(key)
        IO.puts(Map.get(return_map, key))
        send caller, return_map
        loop(map)

      {:put, key, value} ->
        IO.puts("Message received")
        IO.puts(key)
        IO.puts(value)
        loop(Map.put(map, key, value))
    end
  end

end
