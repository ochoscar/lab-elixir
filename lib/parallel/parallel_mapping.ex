defmodule Parallel.ParallelMapping do
  @moduledoc false

  def pmap(collection, func) do
    collection
    |> Enum.map(fn item -> Task.async(fn -> func.(item) end) end)
    |> Enum.map(&Task.await/1)
    |> IO.inspect
  end
end
