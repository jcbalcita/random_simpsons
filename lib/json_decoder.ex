defmodule JsonDecoder do
  import Episode

  def read_episode_json do
    with {:ok, body} <- File.read("episodes_full.json"),
         {:ok, data} <- Poison.decode(body), do: data["episodes"]
  end

end