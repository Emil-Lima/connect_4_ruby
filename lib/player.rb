# frozen_string_literal: true

require './lib/multi_function'
require './lib/player_data'

# class that creates the players of the game
class Player
  attr_accessor :name, :moves, :element, :player_count

  include MultiFunction
  include PlayerData

  @@player_count = 1
  @@used_names = []
  @@used_elements = []

  def self.show_used_elements
    @@used_elements.join
  end

  def self.show_used_names
    @@used_names.join
  end

  def initialize
    @name = player_name
    @moves = []
    @element = player_element
    @@player_count += 1
  end

  def player_name
    print "Player#{@@player_count}, type your name (at least 3 letters long): "
    p_name = gets.chomp!
    p_name = valid_name?(p_name)
    @@used_names.push(p_name)
    p_name
  end

  def player_element
    print "#{name}, pick your ingame element (a-z, caps included): "
    p_element = gets.chomp!
    p_element = valid_element?(p_element)
    @@used_elements.push(p_element)
    p_element
  end

  def self.player_restart
    @@player_count = 1
    @@used_names = []
    @@used_elements = []
  end
end
