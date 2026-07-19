defmodule LabElixir do
  @moduledoc """
  Documentation for `LabElixir`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> LabElixir.hello()
      :world

  """
  def hello do
    :world
  end

  def of(0), do: 1
  def of(n), do: n * of(n - 1)

  def sumn(0), do: 0
  def sumn(n), do: n + sumn(n - 1)
end
