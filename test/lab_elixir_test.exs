defmodule LabElixirTest do
  use ExUnit.Case
  doctest LabElixir

  test "greets the world" do
    assert LabElixir.hello() == :world
  end
end
