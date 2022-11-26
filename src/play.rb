require_relative 'possible_moves'

class Play

  attr_accessor :next_move, :possible_moves

  def initialize
    @turn = Piece::WHITE
    @possible_moves = PossibleMoves.new
  end

  def next_player
    return @turn = Piece::WHITE if @turn == Piece::BLACK
    return @turn = Piece::BLACK if @turn == Piece::WHITE
  end


  def select_piece board

    # print "#{@turn} Select a piece: "
    board.input_message = "#{@turn} Select a piece: "
    board.to_s
    input = gets
    input = input.chomp
    # puts "Selected Piece: #{input}"

    return "quit" if input == "q"

    input = "w"+input.capitalize if @turn == Piece::WHITE
    input = "b"+input.capitalize if @turn == Piece::BLACK

    board.board.each do |row|
      row.each do |piece|
          return piece if piece.id == input unless piece.class == String
      end

    end

    board.info_message = "Invalid selection."
    board.to_s

    return false
  end

  def is_valid_move?
    return true
  end

  def select_move piece, board
    board.input_message = "#{@turn} Move #{piece.icon}(#{piece.position.row},#{piece.position.column}) to: "
    board.to_s
    input = gets
    input = input.chomp
    return "quit" if input == "q"

    new_position = Position.new(input[0], input[1])

    return new_position

  end

  def do_the_move piece, new_position, board
    #check attack
    attacked = board.board[new_position.row][new_position.column]
    if attacked != "."

      board.info_message = "#{attacked.name} killed by #{@turn.capitalize} #{piece.name}"
      board.board[attacked.position.row][attacked.position.column] = "."
      board.to_s

    end

    #clean the board
    board.board[piece.position.row][piece.position.column] = "."

    #insert the piece in the board new position
    piece.position = new_position
    board.board[new_position.row][new_position.column] = piece

    next_player

    return true
  end

end
