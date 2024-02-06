# frozen_string_literal: true
class ChessBoard

  attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def get_position_by_coordinates(coordinates)
    letter = coordinates[0]
    number = coordinates[1]

    [0,7]
  end
end
