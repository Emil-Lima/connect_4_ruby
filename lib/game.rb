# frozen_string_literal: true

require './player'

# class that defines the logic of the game
class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new('Dan')
    @player2 = Player.new('Laura')
  end
end
