defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string |>
      words |>
      Enum.flat_map(&acronyms/1) |>
      Enum.join()
  end

  defp words(string) do
    string |> String.split(~r/[^[:alpha:]]+/u)
  end

  defp acronyms(word) do
    if String.downcase(word) == word do
      [(word |> String.first() |> String.upcase())]
    else
      Regex.scan(~r/\p{Lu}+/u, word) |> List.flatten()
    end
  end
end
