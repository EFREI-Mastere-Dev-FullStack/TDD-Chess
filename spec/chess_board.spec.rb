require_relative '../chess_board'

describe ChessBoard do
  context "#initialize" do
    it "creates an 8x8 chessboard by default" do
      chessboard = ChessBoard.new
      expect(chessboard.board).to be_an Array
      expect(chessboard.board.all? { |row| row.is_a?(Array) }) .to eq(true)
    end
  end
end