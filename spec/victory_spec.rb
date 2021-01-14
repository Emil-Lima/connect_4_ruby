# frozen_string_literal: true

require './lib/game'
require './lib/player' # Comment out this require in game.rb to make the test work

describe Game do
  describe '#victory' do
    it 'returs true' do
      new_game = Game.new
      expect(new_game.player1.victory).to eql(true)
    end
  end
end
