# frozen_string_literal: true

# Comment out all the require in game.rb to make the tests work

require './lib/game'
require './lib/player'

describe Game do
  describe '#victory' do
    it 'returs true' do
      new_game = Game.new
      expect(new_game.player1.victory).to eql(true)
    end
  end
end
