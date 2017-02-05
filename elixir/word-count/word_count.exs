defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence |>
      String.downcase() |>
      String.split(~r/[^[:alnum:]-]+/u) |>
      Enum.filter(fn(word) -> String.length(word) > 0 end) |>
      Enum.group_by(&(&1)) |>
      Map.new(fn({word, words}) -> {word, Enum.count(words)} end)
  end
end
