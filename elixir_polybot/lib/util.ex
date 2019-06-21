defmodule Polybot.Util do

  @base_url "http://api.noopschallenge.com/polybot"
  @point "*"

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

  def print_point_in_matrix(matrix, %{"x" => x, "y" => y}) do
    row_to_update = Enum.at(matrix, x)
    new_row = update_row(row_to_update, y)
    List.replace_at(matrix, x, new_row)
  end

  defp update_row(row, index), do: List.replace_at(row, index, @point)

end
