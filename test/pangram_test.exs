defmodule PangramTest do
  use ExUnit.Case

  describe "Pangram.pangram?/1" do
    test "returns true if all letters of the alphabet are present" do
      assert Pangram.pangram?("qwertyuiopasdfghjklzxcvbnm")
    end

    test "returns false if not all letters of the alphabet are present" do
      refute Pangram.pangram?("qwertyuiopasdfghjklzxcvbn")
    end

    test "allows extra letters" do
      assert Pangram.pangram?("aaabbbbccdefghijklmnopqrstuvwxyz")
    end

    test "ignores non-alpha characters" do
      assert Pangram.pangram?("the quick brown fox jumps over 42 lazy dogs!")
    end

    test "ignores case" do
      assert Pangram.pangram?("The Quick Brown Fox Jumps Over a Lazy Dog")
    end
  end
end
