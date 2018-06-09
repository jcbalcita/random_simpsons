defmodule JsonDecoder do
  def read_episode_json do
    with {:ok, body} <- File.read("episodes_full.json"),
         {:ok, json} <- Poison.decode(body), do: json
  end
end