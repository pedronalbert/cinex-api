defmodule CinexTest do
  use ExUnit.Case
  doctest Cinex

  test "greets the world" do
    assert Cinex.hello() == :world
  end
end
