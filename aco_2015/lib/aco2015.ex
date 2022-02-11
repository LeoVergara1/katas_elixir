defmodule Aco2015 do
  @moduledoc """
  Documentation for `Aco2015`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Aco2015.hello()
      :world

  """
  def hello do
    :world
  end

  def deliver(path) do
    path
    |> String.split("", trim: true)
    |> run_path([{0,0}])
    |> Enum.uniq()
    |> Enum.count()
  end

  defp run_path([], result), do: result

  defp run_path([h | t], result) do
    new_position =
      result
      |> List.last
      |> evaluate(h)
    run_path(t, result ++ [new_position])
  end

  defp evaluate({x, y}, ">"), do: {x + 1, y}
  defp evaluate({x, y}, "<"), do: {x - 1, y}
  defp evaluate({x, y}, "^"), do: {x, y + 1}
  defp evaluate({x, y}, "v"), do: {x, y - 1}
end
