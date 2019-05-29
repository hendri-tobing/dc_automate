defmodule MqttAppTest do
  use ExUnit.Case
  doctest MqttApp

  test "greets the world" do
    assert MqttApp.hello() == :world
  end
end
