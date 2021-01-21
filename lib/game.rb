# frozen_string_literal: true

require './lib/player'
require './lib/grid'
require './lib/multi_function'

# class that defines the logic of the game
class Game
  include MultiFunction

  attr_accessor :player1, :player2, :grid, :num_of_round, :player_count

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @grid = Grid.new
    @num_of_round = 0
  end

  def first_grid
    puts grid.user_grid
  end

  def play
    if @num_of_round < 6 * 7 / 2 # row * column / number of players
      @num_of_round += 1
      round
    else
      puts "It's a tie"
    end
  end
end
