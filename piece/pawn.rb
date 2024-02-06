# frozen_string_literal: true
require_relative 'base_piece'

class Pawn < BasePiece

  def valid_move?(target_coordinate)
    chessboard = ChessBoard.new
    current_position = chessboard.get_position_by_coordinates(current_coordinate)
    next_position    = chessboard.get_position_by_coordinates(target_coordinate)

    current_row = current_position[0]
    next_row = next_position[0]

    current_column = current_position[1]
    next_column = next_position[1]

    p [current_position, next_position]

    current_column == next_column && (current_row - 1 == next_row)
  end

end
