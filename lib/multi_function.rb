# frozen_string_literal: true

# module with helper functions
module MultiFunction
  def horizontal_victory(player)
    grid.background_grid.each do |line|
      if line.join.include?("#{player.element} #{player.element} #{player.element} #{player.element}")
        victory_message(player.name)
        return
      end
    end
    'keep playing'
  end

  def vertical_victory(player)
    length_element_array = grid.background_grid[0].join.length - 1
    while length_element_array >= 0
      vertical = []
      grid.background_grid.map do |el|
        vertical.push(el.join[length_element_array])
      end
      if vertical.join.include?("#{player.element}#{player.element}#{player.element}#{player.element}")
        victory_message(player.name)
        return
      end
      length_element_array -= 1
    end
    'keep playing'
  end

  def diagonal_victory(player)
    'keep playing' if diagonal_right_to_left(player) == 'keep playing' && diagonal_left_to_right(player)
  end

  # In this method we are taking advantage of Ruby's capability to handle negative indexes
  def diagonal_right_to_left(player)
    length_element_array = grid.background_grid[0].join.length - 1
    while length_element_array >= 0
      inside_lenght_element = length_element_array
      diagonal = []
      grid.background_grid.map do |el|
        diagonal.push(el.join[inside_lenght_element])
        inside_lenght_element -= 2
      end
      if diagonal.join.include?("#{player.element}#{player.element}#{player.element}#{player.element}")
        victory_message(player.name)
        return
      end
      length_element_array -= 1
    end
    'keep playing'
  end

  # In this method we are taking advantage of Ruby's capability to handle negative indexes
  def diagonal_left_to_right(player)
    length_element_array = grid.background_grid[0].join.length - 1
    while length_element_array >= 0
      inside_lenght_element = length_element_array
      diagonal = []
      grid.background_grid.reverse.map do |el|
        diagonal.push(el.join[inside_lenght_element])
        inside_lenght_element -= 2
      end
      if diagonal.join.include?("#{player.element}#{player.element}#{player.element}#{player.element}")
        victory_message(player.name)
        return
      end
      length_element_array -= 1
    end
    'keep playing'
  end

  def full_victory(player)
    if vertical_victory(player) == 'keep playing' && horizontal_victory(player) && diagonal_victory(player)
      'keep playing'
    end
  end

  def victory_message(name)
    puts "#{name} wins!"
  end

  def round
    player_turn(player1)
    if full_victory(@player1) == 'keep playing'
      player_turn(player2)
      play if full_victory(@player2) == 'keep playing'
    end
  end

  def player_turn(player)
    puts
    print "#{player.name}, make your column choice: "
    col_player = gets.chomp!
    grid.swap(col_player, player.element)
    player.moves.push(col_player.to_i)
    puts
    puts grid.user_grid
  end
end
