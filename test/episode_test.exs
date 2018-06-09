defmodule EpisodeTest do
  use ExUnit.Case
  doctest Episode

  test "can instantiate Episode struct with all fields" do
    # given
    plain_map = %{
      season: 2,
      season_episode_number: 24,
      title: "JC Goes to Hell",
      writer: "John Carlo Balcita",
      original_air_date: "2018-06-09"
    }

    # when
    episode = struct(Episode, plain_map)

    # then
    assert Map.has_key?(episode, :__struct__)
    assert episode.season == 2
    assert episode.season_episode_number == 24
    assert episode.title == "JC Goes to Hell"
    assert episode.writer == "John Carlo Balcita"
    assert episode.original_air_date == "2018-06-09"
  end
end
