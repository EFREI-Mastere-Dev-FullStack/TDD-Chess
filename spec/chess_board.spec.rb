require_relative '../chess_board'

describe ChessBoard do
  context '#initialize' do
    it 'creates an 8x8 chessboard by default' do
      chessboard = ChessBoard.new
      expect(chessboard.board).to be_an Array
      expect(chessboard.board.all? { |row| row.is_a?(Array) }) .to eq(true)
    end
  end

  context '#get_position_by_name' do
    it 'return the position in the corner' do
      result = get_position_by_coordinates('A1')
      expect(result).to eq([0,7])
    end
  end
end