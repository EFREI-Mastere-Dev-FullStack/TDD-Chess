# frozen_string_literal: true
class ChessBoard

  attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def get_position_by_coordinates(coordinates) #A1
    letter = coordinates[0]
    number = coordinates[1]

    column = coordinates[0].upcase.ord - 'A'.ord
    row = 8 - coordinates[1].to_i

    [row, column]
  end
end
