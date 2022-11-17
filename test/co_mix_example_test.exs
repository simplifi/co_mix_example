defmodule CoMixExampleTest do
  use ExUnit.Case
  doctest CoMixExample

  test "greets the world" do
    assert CoMixExample.hello() == :world
  end
end
