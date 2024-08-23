defmodule RestApiSampleTest do
  use ExUnit.Case
  doctest RestApiSample

  test "greets the world" do
    assert RestApiSample.hello() == :world
  end
end
