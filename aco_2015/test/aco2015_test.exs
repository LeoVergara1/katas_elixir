defmodule Aco2015Test do
  use ExUnit.Case
  doctest Aco2015

  test "greets the world" do
    assert Aco2015.hello() == :world
  end

  test "^>v< delivers presents to 2 haouses" do
    assert Aco2015.deliver("^>v<") == 4
  end

  test "^v^v^v^v^v delivers presents to 4 haouses inm square" do
    assert Aco2015.deliver("^v^v^v^v^v") == 2
  end
end
