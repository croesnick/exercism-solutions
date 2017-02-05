defmodule Bob do
  def hey(input) when is_nil(input), do: "Fine. Be that way!"
  def hey(input) do
    cond do
      said_nothing?(input) ->
        "Fine. Be that way!"
      question?(input) ->
        "Sure."
      yelling?(input) ->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp said_nothing?(input) do
    (input |> String.trim() |> String.length) == 0
  end

  defp yelling?(input) do
    (input == String.upcase(input)) && input =~ ~r/\p{Lu}/u
  end
end
