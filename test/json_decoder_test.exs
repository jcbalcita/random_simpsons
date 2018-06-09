defmodule JsonDecoderTest do
  use ExUnit.Case
  doctest JsonDecoder

  test "can read json files" do
    # when
    elixir_map = JsonDecoder.read_episode_json()

    # then
    first_episode_of_season_two = elixir_map["14"]
    assert first_episode_of_season_two["writer"] == "David M. Stern"
  end

  # test "reads json file and returns map containing Episode structs" do
  #   # when
  #   elixir_map = JsonDecoder.read_episode_json()

  #   # then
  #   first_episode_of_season_two = elixir_map["14"]
  #   assert Map.has_key? first_episode_of_season_two, :__struct__
  # end
end
