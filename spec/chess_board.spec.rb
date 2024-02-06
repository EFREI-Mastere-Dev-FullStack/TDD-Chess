require_relative '../chess_board'

describe ChessBoard do
  context '#initialize' do
    it 'creates an 8x8 chessboard by default' do
      chessboard = ChessBoard.new
      expect(chessboard.board).to be_an Array
      expect(chessboard.board.all? { |row| row.is_a?(Array) }) .to eq(true)
    end
  end

  context '#get_position_by_coordinates' do

    chessboard = ChessBoard.new
    it 'return the position in the corner at bottom left' do
      result = chessboard.get_position_by_coordinates('A1')
      expect(result).to eq([7,0])
    end

    it 'return the middle position' do
      result = chessboard.get_position_by_coordinates('E4')
      expect(result).to eq([4,4])
    end

    it 'return the corner at the top right' do
      result = chessboard.get_position_by_coordinates('H8')
      expect(result).to eq([0,7])
    end

    it 'should throw an exception if coordinates have more than 2 characters' do
      expect { chessboard.get_position_by_coordinates('H88') }.to raise_error(RangeError)
    end

    it 'should throw an exception if coordinates less than 2 characters' do
      expect { chessboard.get_position_by_coordinates('C') }.to raise_error(RangeError)
    end

  end
end