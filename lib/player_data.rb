# frozen_string_literal: true

# module to check whether the data provided by the player is valid or not
module PlayerData
  def valid_name?(name)
    if name.length < 3 || Player.show_used_names.include?(name) || name.empty?
      puts "That's not a valid name. Please, select again."
      return player_name
    end
    puts
    name
  end

  def valid_element?(element)
    if element.length > 1 || element.empty? || Player.show_used_elements.include?(element) ||
       element.empty? || element.ord < 65 || element.ord > 90 && element.ord < 97 || element.ord > 122
      puts "That's not valid. Please, select again."
      return player_element
    end
    puts
    element
  end
end
