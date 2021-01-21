# frozen_string_literal: true

require './lib/game'

# Module with a method that actually runs the game and a method to replay the game
module GameRun
  def full_game
    game = Game.new
    game.first_grid
    game.play
    replay
  end

  def replay
    print 'Do you want to play again? (type y if yes): '
    answer = gets.chomp!
    if answer == 'y'
      puts "The new game is starting now:\n "
      Player.player_restart
      full_game
    else
      puts "\nThanks for playing!"
    end
  end
end
