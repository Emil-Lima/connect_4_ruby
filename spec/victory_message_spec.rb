# frozen_string_literal: true

# To pass the text do the 2 following things:
# On file game.rb, method #play, add <return "player1 wins">.
# On file multi_function.rb, method #player_turn(player), <col_player = "1">.

require './lib/player'
require './lib/game'
require './lib/grid'
require './lib/multi_function'
require './lib/main'

describe Game do
  describe '#victory_message' do
    it 'returns a victory message with name' do
      new_game = Game.new
      new_game.grid.background_grid = [['|x x x x x x x|'], ['|x x x x x x x|'], ['|x x x x x x x|'],
                                       ['|x x x x x x x|'], ['|x x x x x x x|'], ['|x x x x x x x|']]
      expect(new_game.play).to eql('player1 wins!')
    end
  end
end
