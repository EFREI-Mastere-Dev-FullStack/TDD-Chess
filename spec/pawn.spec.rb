require_relative '../piece/pawn'
require_relative '../chess_board'

describe Pawn do
  context '#valid_move?' do
    chessboard = ChessBoard.new
    pawn = Pawn.new(current_coordinate: 'A2')

    it 'should return true if pawn moves forward' do
      result  = pawn.valid_move?('A3')
      expect(result).to eq(true)
    end

    it 'should return false if pawn does not move forward' do
      result = pawn.valid_move?('C2')
      expect(result).to eq(false)
    end

    it 'should return false if pawn moves at same place' do
      result = pawn.valid_move?('A2')
      expect(result).to eq(false)
    end
  end
end