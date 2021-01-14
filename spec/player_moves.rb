# frozen_string_literal: true

require './lib/game'
require './lib/player' # Comment out this require in game.rb to make the test work

describe Game do
  describe '#moves' do
    it 'returns [1,1,1,1]' do
      new_game = Game.new
      expect(new_game.player1.moves).to eql([1, 1, 1, 1])
    end
  end
end
