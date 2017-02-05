defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :uranus | :neptune

  @year_in_sec %{ earth:   31557600,
                  mercury: 31557600 * 0.2408467,
                  venus:   31557600 * 0.61519726,
                  mars:    31557600 * 1.8808158,
                  jupiter: 31557600 * 11.862615,
                  saturn:  31557600 * 29.447498,
                  uranus:  31557600 * 84.016846,
                  neptune: 31557600 * 164.79132 }

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    {:ok, year_length} = Map.fetch(@year_in_sec, planet)
    seconds / year_length
  end
end
