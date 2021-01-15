# frozen_string_literal: true

# Comment out all the require in game.rb to make the tests work
require './lib/game'
require './lib/grid'

describe Game do
  describe Grid do
    describe '#user_grid' do
      it 'returns grid that users see' do
        grid = Grid.new
        expect(grid.user_grid).to eql([["|· · · · · · ·|\n"], ["|· · · · · · ·|\n"], ["|· · · · · · ·|\n"],
                                       ["|· · · · · · ·|\n"], ["|· · · · · · ·|\n"], ["|· · · · · · ·|\n"]])
      end
    end
  end
end
