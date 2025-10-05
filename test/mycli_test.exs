defmodule MycliTest do
  use ExUnit.Case
  doctest MyCLI

  test "greets the world" do
    assert Hello.run("dev") == :ok
  end
end
