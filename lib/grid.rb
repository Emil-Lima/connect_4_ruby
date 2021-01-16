# frozen_string_literal: false

# class to create and modify the grid that users see
class Grid
  attr_accessor :user_grid, :background_grid

  def initialize
    @user_grid = [["|· · · · · · ·|\n"], ["|· · · · · · ·|\n"], ["|· · · · · · ·|\n"], ["|· · · · · · ·|\n"],
                  ["|· · · · · · ·|\n"], ["|· · · · · · ·|\n"]]
    @background_grid = [['|1 2 3 4 5 6 7|'], ['|1 2 3 4 5 6 7|'], ['|1 2 3 4 5 6 7|'], ['|1 2 3 4 5 6 7|'],
                        ['|1 2 3 4 5 6 7|'], ['|1 2 3 4 5 6 7|']]
  end

  def swap(column, element)
    length = user_grid.length - 1
    while length >= 0
      if background_grid[length].join.include?(column)
        user_grid[length][0][column.to_i + column.to_i - 1] = element
        background_grid[length][0][column.to_i + column.to_i - 1] = element
        break
      end
      length -= 1
    end
  end
end
