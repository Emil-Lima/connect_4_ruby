# frozen_string_literal: true

# Comment out all the require in game.rb to make the tests work
require './lib/game'
require './lib/player'

describe Game do
  describe '#moves' do
    it 'returns [1,1,1,1]' do
      new_game = Game.new
      expect(new_game.player1.moves).to eql([1, 1, 1, 1])
    end
  end
end
