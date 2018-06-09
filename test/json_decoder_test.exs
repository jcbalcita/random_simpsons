defmodule JsonDecoderTest do
  use ExUnit.Case
  doctest JsonDecoder

  test "can read json files" do
    # when
    episode_list = JsonDecoder.read_episode_json()

    # then
    first_episode_of_season_two = List.first(episode_list)
    assert first_episode_of_season_two["writer"] == "David M. Stern"
  end

end
