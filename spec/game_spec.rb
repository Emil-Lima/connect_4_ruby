# frozen_string_literal: true

require './lib/game'
require './lib/player' # Comment out the require in game.rb to make the test work

describe Game do
  describe '#name' do
    it 'returns name of player from Player class(Dan)' do
      new_game = Game.new
      expect(new_game.player1.name).to eql('Dan')
    end
    it 'returns name of player from Player class(Laura)' do
      new_game = Game.new
      expect(new_game.player2.name).to eql('Laura')
    end
  end
end
