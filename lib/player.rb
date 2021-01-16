# frozen_string_literal: true

require './lib/multi_function'

# class that creates the players of the game
class Player
  attr_accessor :name, :moves, :element

  include MultiFunction

  def initialize(name, element)
    @name = name
    @moves = []
    @element = element
  end
end
