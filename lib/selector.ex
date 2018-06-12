defmodule RandomSimpsons.Selector do
  alias RandomSimpsons.JsonDecoder
  alias RandomSimpsons.Episode

  def get_random_episode do
    JsonDecoder.convert_json_to_episode_list()
    |> pop_random_episode()
    |> update_json_file()
  end

  defp pop_random_episode({:error, _}), do: {:error, "No more episodes to watch"}

  defp pop_random_episode({:ok, episode_list}) do
    length = Enum.count(episode_list)
    random = Enum.random(0..length)

    {List.delete_at(episode_list, random), Enum.at(episode_list, random)}
  end

  defp update_json_file({:error, message}), do: IO.puts(message)

  defp update_json_file({updated_list, random_episode}) do
    random_episode |> Episode.to_string() |> IO.puts()

    content = %{
      "episodes" => updated_list,
      "pending" => random_episode
    }

    encodedJson = Poison.encode!(content)
    File.write("episodes.json", encodedJson)
  end
end
