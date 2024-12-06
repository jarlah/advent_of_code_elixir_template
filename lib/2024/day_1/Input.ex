defmodule AOC2024.Day1.Input do
  @doc ~S"""
  ## Examples

      iex> AOC2024.Day1.Input.input()

  """
  def input do
    File.open!(Path.join(__DIR__, "input.txt"), [:read, :utf8])
    |> IO.stream(:line)
    |> Enum.map(&String.trim/1)
    |> Enum.reject(&(&1 == ""))
  end
end
