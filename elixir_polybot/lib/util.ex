defmodule Polybot.Util do

  @base_url "http://api.noopschallenge.com/polybot"

  def get_polygon() do
    {:ok, response} = HTTPoison.get(@base_url)
    Poison.decode!(response.body)
  end

  def create_matrix(max) do
    range = Enum.to_list 1..max
    for _n <- range do
      for _e <- range, do: "-"
    end
  end

  def print_matrix(matrix) do
    Enum.each(matrix, fn row ->
      row_for_print = Enum.join(row, "")
      IO.puts row_for_print
    end)
  end

end
