# frozen_string_literal: true

require './lib/player'
require './lib/grid'
require "./lib/multi_function"

# class that defines the logic of the game
class Game
  include MultiFunction

  attr_accessor :player1, :player2, :grid, :num_of_round

  def initialize
    @player1 = Player.new('player1', "x")
    @player2 = Player.new('player2', "o")
    @grid = Grid.new
    @num_of_round = 0
  end

  def first_grid
    puts grid.user_grid
  end

  def play
    if num_of_round < 6 * 7 / 2 # row * column / number of players
      round
      @num_of_round += 1
    else
      return "Tie"
    end
  end
end
