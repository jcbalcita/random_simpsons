defmodule RandomSimpsons.Episode do
  alias RandomSimpsons.Episode
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

  @spec to_string(%Episode{}) :: String.t()
  def to_string(%{season_episode_number: n} = episode) do
    episode_number =
      case n < 10 do
        true -> "0#{n}"
        false -> "#{n}"
      end

    "S0#{episode.season}E#{episode_number}: #{episode.title}\nWritten by #{episode.writer}\nOriginally aired #{episode.original_air_date}"
  end
end
