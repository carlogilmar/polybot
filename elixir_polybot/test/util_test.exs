defmodule PolybotTest.UtilTest do
  use ExUnit.Case
  alias Polybot.Util

  test "Print " do
    matrix = get_matrix()
    {x,y} = {2,3}
    new_matrix = Util.print_point_in_matrix(matrix, %{"x" => x, "y" => y})
    expected_matrix =
      [
        ["-", "-", "-", "-", "-"],
        ["-", "-", "-", "-", "-"],
        ["-", "-", "-", "*", "-"],
        ["-", "-", "-", "-", "-"],
        ["-", "-", "-", "-", "-"]
      ]
    assert new_matrix == expected_matrix
  end

  defp get_matrix() do
    [
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"]
    ]
  end
end
