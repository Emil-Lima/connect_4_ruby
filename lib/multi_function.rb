# frozen_string_literal: true

# module with helper functions and constants
module MultiFunction
  VICTORIOUS = [1, 1, 1, 1].freeze

  def victory
    @moves == VICTORIOUS
  end
end
