defmodule PolybotTest do
  use ExUnit.Case
  doctest Polybot

  test "greets the world" do
    assert Polybot.hello() == :world
  end
end
