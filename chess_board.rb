# frozen_string_literal: true
class ChessBoard

  attr_reader :board

  CHESS_DIM = 8
  def initialize
    @board = Array.new(CHESS_DIM) { Array.new(CHESS_DIM) }
  end

  def get_position_by_coordinates(coordinates)
    raise RangeError if coordinates.size > 2 || coordinates.size < 2

    letter = coordinates[0]
    number = coordinates[1]

    raise RangeError unless letter.match?(/[[:alpha:]]/)
    raise RangeError if letter.upcase.ord > 'H'.ord

    column = letter.upcase.ord - 'A'.ord
    row = 8 - number.to_i

    [row, column]
  end
end
