class PossibleMoves


  def check piece, new_position, board

    # Case move to the same position
    if new_position.row == piece.position.row &&
      new_position.column == piece.position.column
      puts "You can't move to the same position."
      return false
    end

    #Case move out of the board
    if new_position.row < 0 || new_position.row > 7 ||
      new_position.column < 0 || new_position.column > 7
      puts "You can't move out of the board."
      return false
    end


    # WHITE PAWNS RULES
    if piece.id == board.wP1.id ||
       piece.id == board.wP2.id ||
       piece.id == board.wP3.id ||
       piece.id == board.wP4.id ||
       piece.id == board.wP5.id ||
       piece.id == board.wP6.id ||
       piece.id == board.wP7.id ||
       piece.id == board.wP8.id

      # Case white pawn move backwards
      if new_position.row > piece.position.row
        board.info_message = "Pawn can't move backwards."
        board.to_s
        return false
      end

      #Case pawn move forward
      return true if new_position.row == piece.position.row-1 &&
                     new_position.column == piece.position.column

      #Case pawn first move
      return true if new_position.row == 4 &&
                     new_position.column == piece.position.column

      #Case pawn attack
      return true if (new_position.row == piece.position.row-1 && new_position.column == piece.position.column-1) ||
                     (new_position.row == piece.position.row-1 && new_position.column == piece.position.column+1) &&
                     board.board[new_position.row][new_position.column] != "."

    end


    # BLACK PAWN RULES
    if piece.id == board.bP1.id ||
       piece.id == board.bP2.id ||
       piece.id == board.bP3.id ||
       piece.id == board.bP4.id ||
       piece.id == board.bP5.id ||
       piece.id == board.bP6.id ||
       piece.id == board.bP7.id ||
       piece.id == board.bP8.id

      # Case black pawn move backwards
      if new_position.row < piece.position.row
        board.info_message = "Pawn can't move backwards."
        board.to_s
        return false
      end

      return true if new_position.row == piece.position.row+1 &&
                     new_position.column == piece.position.column
      return true if new_position.row == 3 &&
                     new_position.column == piece.position.column
    end

    board.info_message = "Invalid movement!"
    board.to_s

    return false
  end
end
