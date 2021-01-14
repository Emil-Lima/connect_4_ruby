# frozen_string_literal: true

require './lib/multi_function'

# class that creates the players of the game
class Player
  attr_accessor :name, :moves

  include MultiFunction

  def initialize(name)
    @name = name
    @moves = [1, 1, 1, 1]
  end
end
