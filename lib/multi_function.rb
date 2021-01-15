# frozen_string_literal: true

# module with helper functions and constants
module MultiFunction
  VICTORIOUS = [1, 1, 1, 1].freeze

  def victory
    if player1.moves == VICTORIOUS
      victory_message(player1.name)
    elsif player2.moves == (VICTORIOUS)
      victory_message(player2.name)
    else
      'no'
    end
  end

  def victory_message(name)
    puts "#{name} wins!"
  end

  def round
    player_turn(@player1)
    player_turn(@player2)
  end

  def player_turn(player)
    puts grid.user_grid
    print "#{player.name}, make your column choice: "
    col_player = gets.chomp!
    grid.swap(col_player, player.element)
    player.moves.push(col_player.to_i)
  end
end
