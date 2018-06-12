defmodule RandomSimpsons.JsonDecoderTest do
  use ExUnit.Case
  doctest RandomSimpsons.JsonDecoder
  alias RandomSimpsons.JsonDecoder

  test "can return a list of Episode structs from JSON" do
    # when
    episode_list = JsonDecoder.convert_json_to_episode_list()

    # then
    first_episode_of_season_two = List.first(episode_list)
    assert Enum.all?(episode_list, fn e -> Map.has_key?(e, :__struct__) end)
    assert first_episode_of_season_two.writer == "David M. Stern"
  end
end
