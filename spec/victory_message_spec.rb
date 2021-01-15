# frozen_string_literal: true

# Comment out all the require in game.rb to make the tests work

require './lib/player'
require './lib/game'

describe Game do
  describe '#victory_message' do
    it 'returns a victory message with name' do
      new_game = Game.new
      expect(new_game.player1.victory).to eql('player1 wins!')
    end
  end
end
