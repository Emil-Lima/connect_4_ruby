# frozen_string_literal: true

require './lib/game'

# Class that runs the full game
class Main
  def self_initialize
    game = Game.new
    game.first_grid
    game.play
    self_replay
  end

  def self_replay
    puts 'Do you want to play again?(y/n)'
    answer = gets.chomp!
    return unless answer == 'y'

    puts "The new game is starting now:\n "
    Main.new.self_initialize
  end
end

Main.new.self_initialize
