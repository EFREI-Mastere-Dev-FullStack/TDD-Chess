require_relative '../chess_board'

describe ChessBoard do
  context "#initialize" do
    it "creates an 8x8 chessboard by default" do
      chessboard = ChessBoard.new
      expect(chessboard.board).to be_an Array
    end
  end
end