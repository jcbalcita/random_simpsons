defmodule RandomSimpsons.Main do
  alias RandomSimpsons.Selector

  def main(args \\ []) do
    Selector.get_random_episode()
  end
end
