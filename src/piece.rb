require_relative "position"

class Piece < Position

  attr_accessor :id, :name, :color, :status, :icon, :position

  WHITE = "WHITE"
  BLACK = "BLACK"

  PAWN = "Pawn"
  ROOK = "Rook"
  KNIGHT = "Knight"
  BISHOP = "Bishop"
  QUEEN = "Queen"
  KING = "King"

  PAWN_ICON = "♙"
  ROOK_ICON = "♖"
  KNIGHT_ICON = "♘"
  BISHOP_ICON = "♗"
  QUEEN_ICON = "♕"
  KING_ICON = "♔"

  LIVE = "Live"
  DEAD = "Dead"


  def initialize(id, name, color, icon, status, position)
    @id = id
    @name = name
    @color = color
    @icon = icon
    @status = status
    @position = position
  end

  def print_icon
    print @icon
  end

  def to_s
    print_icon
  end

end

# Piece Code Symbol
# King K ♔
# Queen Q ♕
# Rook R ♖
# Knight N ♘
# Bishop B ♗
# Pawn P ♙
