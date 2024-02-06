# frozen_string_literal: true
class ChessBoard

  attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def get_position_by_coordinates(coordinates)
    raise RangeError if coordinates.size > 2 || coordinates.size < 2

    letter = coordinates[0]
    number = coordinates[1]

    column = letter.upcase.ord - 'A'.ord
    row = 8 - number.to_i

    [row, column]
  end
end
