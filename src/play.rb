class Play

  attr_accessor :next_move

  def initialize
    @turn = Piece::WHITE
  end

def move piece, row, column, board

  old_position = piece.position
  board.board[row][column] = piece
  board.board[old_position.row][old_position.column] = "."

  board.to_s
  puts "Player #{@turn} moved #{piece.id} to position #{row}, #{column}"
  next_player
  puts "Next Player: #{@turn}\n\n"

end

def next_player
  return @turn = Piece::WHITE if @turn == Piece::BLACK
  return @turn = Piece::BLACK if @turn == Piece::WHITE
end


def select_piece id, board
  board.board.each do |row|
    row.each do |piece|

        return piece if piece.id == id unless piece.class == String

    end

  end
  puts "Invalid selection. Try again:"
  return false
end

def is_valid_selection? piece_id
  return true
end

def is_valid_move?
  return true
end

def select_move
  return true
end


end
