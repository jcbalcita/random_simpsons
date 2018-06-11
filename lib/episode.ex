defmodule Episode do
  defstruct [:season, :season_episode_number, :title, :writer, :original_air_date]

  @spec from_string_keyed_map(map()) :: %Episode{}
  def from_string_keyed_map(map) do
    %Episode{
      season: map["season"],
      season_episode_number: map["season_episode_number"],
      title: map["title"],
      writer: map["writer"],
      original_air_date: map["original_air_date"]
    }
  end
end