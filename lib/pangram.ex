defmodule Pangram do
  defmodule Helper do
    def letters(string) do
      string |> String.downcase() |> String.codepoints() |> MapSet.new()
    end
  end

  @alphabet Helper.letters("abcdefghijklmnopqrstuvwxyz")

  def pangram?(sentence) do
    MapSet.subset?(@alphabet, Helper.letters(sentence))
  end
end
