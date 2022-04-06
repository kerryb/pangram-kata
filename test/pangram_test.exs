defmodule PangramTest do
  use ExUnit.Case
  doctest Pangram

  test "greets the world" do
    assert Pangram.hello() == :world
  end
end
