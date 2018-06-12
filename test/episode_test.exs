defmodule RandomSimpsons.EpisodeTest do
  use ExUnit.Case
  doctest RandomSimpsons.Episode
  alias RandomSimpsons.Episode

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

  test "can convert string-keyed map to Episode struct" do
    # given
    string_keyed_map = %{
      "season" => 9,
      "season_episode_number" => 11,
      "title" => "JC Goes to Camp",
      "writer" => "Kobe Bryant",
      "original_air_date" => "2018-06-11"
    }

    # when
    episode = Episode.from_string_keyed_map(string_keyed_map)

    # then
    assert Map.has_key?(episode, :__struct__)
    assert episode.season == 9
    assert episode.season_episode_number == 11
    assert episode.title == "JC Goes to Camp"
    assert episode.writer == "Kobe Bryant"
    assert episode.original_air_date == "2018-06-11"
  end

end
