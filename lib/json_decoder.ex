defmodule RandomSimpsons.JsonDecoder do
  alias RandomSimpsons.Episode

  def convert_json_to_episode_list do
    episode_list = read_episode_json() |> create_episode_list()

    case episode_list do
      x when x in [nil, []] -> {:error, "No more episodes left"}
      _ -> {:ok, episode_list}
    end
  end

  defp read_episode_json do
    filename =
      case File.stat("episodes.json") do
        {:ok, _} -> "episodes.json"
        _ -> "episodes_full.json"
      end

    with {:ok, body} <- File.read(filename),
         {:ok, data} <- Poison.decode(body),
         do: data["episodes"]
  end

  defp create_episode_list(list) do
    list |> Enum.map(&Episode.from_string_keyed_map(&1))
  end
end
