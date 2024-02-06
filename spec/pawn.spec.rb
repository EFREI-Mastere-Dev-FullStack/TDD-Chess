require_relative '../piece/pawn'

describe Pawn do
  context '#valid_move?' do
    chessboard = ChessBoard.new

    it 'should return true if pawn moves forward' do
      pawn = Pawn.new(current_coordinate: 'A2')
      result  = valid_move?('A3')
      expect(result).to eq(true)
    end
  end
end