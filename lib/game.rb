# frozen_string_literal: true

require './lib/player'
require './lib/grid'
require "./lib/multi_function"

# class that defines the logic of the game
class Game
  include MultiFunction

  attr_accessor :player1, :player2, :grid

  def initialize
    @player1 = Player.new('player1', "x")
    @player2 = Player.new('player2', "o")
    @grid = Grid.new
  end

  def play
    if victory == "no"
      round
      play
    end
  end
end
