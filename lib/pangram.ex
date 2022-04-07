defmodule Pangram do
  def pangram?(sentence) do
    MapSet.subset?(letters("abcdefghijklmnopqrstuvwxyz"), letters(sentence))
  end

  defp letters(string) do
    string |> String.downcase() |> String.codepoints() |> MapSet.new()
  end
end
