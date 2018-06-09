defmodule EpisodePicker do
  alias RandomSimpsons.Episode

  # @spec get_random_episodes(map(), integer()) :: list(%Episode{})
  # def get_random_episode(episodes, n \\ 1) do
  #   get_random_episodes_helper(episodes, n, 0, [])
  # end

  # @spec get_random_episodes_helper(map(), integer(), integer(), list(%Episode{})) :: list(%Episode{})
  # defp get_random_episodes_helper(_, n_total, n_completed, result) when n_total == n_completed, do: result
  # defp get_random_episodes_helper(episodes, n_total, n_completed, result) do
  #   episode_number_list = Map.keys(episodes)
  #   episode_count = Enum.count(episode_number_list)
  #   random_episode = Enum.random(episodes) |> Map.get

  #   get_random_episodes_helper(episodes, n_total, n_completed + 1, [random_episode] ++ result )_
  # end

end