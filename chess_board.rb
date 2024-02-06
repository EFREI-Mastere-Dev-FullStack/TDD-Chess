# frozen_string_literal: true
class ChessBoard

  attr_reader :board

  CHESS_DIM = 8
  def initialize
    @board = Array.new(CHESS_DIM) { Array.new(CHESS_DIM) }
  end

  def get_position_by_coordinates(coordinates)
    raise RangeError unless valid_coordinates?(coordinates)

    row = 8 - coordinates[1].to_i
    column = coordinates[0].upcase.ord - 'A'.ord

    [row, column]
  end

  def valid_coordinates?(coordinates)
    return false unless coordinates.size == 2

    letter = coordinates[0]
    number = coordinates[1]

    valid_letter?(letter) && valid_number?(number)
  end

  def valid_letter?(letter)
    letter.match?(/[[:alpha:]]/) && letter.upcase.ord <= 'H'.ord
  end

  def valid_number?(number)
    number.match?(/[[:digit:]]/) && number.to_i <= CHESS_DIM
  end

end
