require_relative 'piece'
require_relative 'printer'

class Board

  attr_accessor :board, :info_message, :input_message, :wP1, :wP2, :wP3, :wP4, :wP5, :wP6, :wP7, :wP8, :wR1, :wR2, :wN1, :wN2, :wB1, :wB2, :wQ, :wK, :bP1, :bP2, :bP3, :bP4, :bP5, :bP6, :bP7, :bP8, :bR1, :bR2, :bN1, :bN2, :bB1, :bB2, :bQ, :bK

  def initialize

    @board = Array.new(8){Array.new(8)}
    @info_message = ""
    @input_message = ""

    # Empty board
    (0..7).each do |i|
      @board[2][i] = "."
      @board[3][i] = "."
      @board[4][i] = "."
      @board[5][i] = "."
    end

    # White Pieces Creation
    @wP1 = Piece.new("wP1", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(6, 0))
    @wP2 = Piece.new("wP2", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(6, 1))
    @wP3 = Piece.new("wP3", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(6, 2))
    @wP4 = Piece.new("wP4", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(6, 3))
    @wP5 = Piece.new("wP5", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(6, 4))
    @wP6 = Piece.new("wP6", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(6, 5))
    @wP7 = Piece.new("wP7", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(6, 6))
    @wP8 = Piece.new("wP8", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(6, 7))
    @wR1 = Piece.new("wR1", Piece::ROOK, Piece::WHITE, Piece::ROOK_ICON, Piece::LIVE, Position.new(7, 0))
    @wR2 = Piece.new("wR2", Piece::ROOK, Piece::WHITE, Piece::ROOK_ICON, Piece::LIVE, Position.new(7, 7))
    @wN1 = Piece.new("wN1", Piece::KNIGHT, Piece::WHITE, Piece::KNIGHT_ICON, Piece::LIVE, Position.new(7, 1))
    @wN2 = Piece.new("wN2", Piece::KNIGHT, Piece::WHITE, Piece::KNIGHT_ICON, Piece::LIVE, Position.new(7, 6))
    @wB1 = Piece.new("wB1", Piece::BISHOP, Piece::WHITE, Piece::BISHOP_ICON, Piece::LIVE, Position.new(7, 2))
    @wB2 = Piece.new("wB2", Piece::BISHOP, Piece::WHITE, Piece::BISHOP_ICON, Piece::LIVE, Position.new(7, 5))
    @wQ = Piece.new("wQ", Piece::QUEEN, Piece::WHITE, Piece::QUEEN_ICON, Piece::LIVE, Position.new(7, 3))
    @wK = Piece.new("wK", Piece::KING, Piece::WHITE, Piece::KING_ICON, Piece::LIVE, Position.new(7, 4))
    # set white pawns in position
    @board[6][0] = wP1
    @board[6][1] = wP2
    @board[6][2] = wP3
    @board[6][3] = wP4
    @board[6][4] = wP5
    @board[6][5] = wP6
    @board[6][6] = wP7
    @board[6][7] = wP8
    # set white pieces in position
    @board[7][0] = wR1
    @board[7][1] = wN1
    @board[7][2] = wB1
    @board[7][3] = wQ
    @board[7][4] = wK
    @board[7][5] = wB2
    @board[7][6] = wN2
    @board[7][7] = wR2

    # Black Pieces Creation
    @bP1 = Piece.new("bP1", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(1, 0))
    @bP2 = Piece.new("bP2", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(1, 1))
    @bP3 = Piece.new("bP3", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(1, 2))
    @bP4 = Piece.new("bP4", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(1, 3))
    @bP5 = Piece.new("bP5", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(1, 4))
    @bP6 = Piece.new("bP6", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(1, 5))
    @bP7 = Piece.new("bP7", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(1, 6))
    @bP8 = Piece.new("bP8", Piece::PAWN, Piece::WHITE, Piece::PAWN_ICON, Piece::LIVE, Position.new(1, 7))
    @bR1 = Piece.new("bR1", Piece::ROOK, Piece::WHITE, Piece::ROOK_ICON, Piece::LIVE, Position.new(0, 0))
    @bR2 = Piece.new("bR2", Piece::ROOK, Piece::WHITE, Piece::ROOK_ICON, Piece::LIVE, Position.new(0, 7))
    @bN1 = Piece.new("bN1", Piece::KNIGHT, Piece::WHITE, Piece::KNIGHT_ICON, Piece::LIVE, Position.new(0, 1))
    @bN2 = Piece.new("bN2", Piece::KNIGHT, Piece::WHITE, Piece::KNIGHT_ICON, Piece::LIVE, Position.new(0, 6))
    @bB1 = Piece.new("bB1", Piece::BISHOP, Piece::WHITE, Piece::BISHOP_ICON, Piece::LIVE, Position.new(0, 2))
    @bB2 = Piece.new("bB2", Piece::BISHOP, Piece::WHITE, Piece::BISHOP_ICON, Piece::LIVE, Position.new(0, 5))
    @bQ = Piece.new("bQ", Piece::QUEEN, Piece::WHITE, Piece::QUEEN_ICON, Piece::LIVE, Position.new(0, 3))
    @bK = Piece.new("bK", Piece::KING, Piece::WHITE, Piece::KING_ICON, Piece::LIVE, Position.new(0, 4))
    # set black pawn in position
    @board[1][0] = bP1
    @board[1][1] = bP2
    @board[1][2] = bP3
    @board[1][3] = bP4
    @board[1][4] = bP5
    @board[1][5] = bP6
    @board[1][6] = bP7
    @board[1][7] = bP8
    # set black pieces in position
    @board[0][0] = bR1
    @board[0][1] = bN1
    @board[0][2] = bB1
    @board[0][3] = bQ
    @board[0][4] = bK
    @board[0][5] = bB2
    @board[0][6] = bN2
    @board[0][7] = bR2

  end

  def to_s
    printer = Printer.new
    printer.print_board @board, @info_message, @input_message
  end

end
