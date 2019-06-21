defmodule PolybotTest.UtilTest do
  use ExUnit.Case
  alias Polybot.Util

  test "Print a point" do
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

  defp get_polygon() do
    %{
      "polygons" => [
        [
          %{"x" => 917, "y" => 670},
          %{"x" => 835, "y" => 754},
          %{"x" => 797, "y" => 750},
          %{"x" => 775, "y" => 671},
          %{"x" => 759, "y" => 599},
          %{"x" => 844, "y" => 608},
          %{"x" => 900, "y" => 650}
        ]
      ]
    }
  end
end
