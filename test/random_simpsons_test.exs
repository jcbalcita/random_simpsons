defmodule RandomSimpsonsTest do
  use ExUnit.Case
  doctest RandomSimpsons

  test "greets the world" do
    assert RandomSimpsons.hello() == :world
  end
end
