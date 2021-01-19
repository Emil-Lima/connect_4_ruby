# frozen_string_literal: true

require './lib/multi_function'

# class that creates the players of the game
class Player
  attr_accessor :name, :moves, :element, :player_count

  include MultiFunction

  @@player_count = 1
  @@used_names = []

  def initialize(element)
    @name = player_names
    @moves = []
    @element = element
  end

  def player_names
    print "Player#{@@player_count}, type your name: "
    p_name = gets.chomp!
    p_name = "player#{@@player_count}" if @@used_names.join.include?(p_name) || p_name.empty?
    @@used_names.push(p_name)
    @@player_count += 1
    p_name
  end

  def self.player_restart
    @@player_count = 1
    @@used_names = []
  end
end
