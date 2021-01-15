# frozen_string_literal: true

# Comment out all the require in game.rb to make the tests work
require './lib/game'
require './lib/player'

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
