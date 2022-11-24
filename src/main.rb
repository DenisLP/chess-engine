#!/usr/bin/ruby -w

require_relative 'board'
require_relative 'play'
require_relative 'position'

class Main
  game_status = "running" #running, white_win, black_win
  valid_move = false

  board = Board.new
  system('clear')
  board.to_s

  play = Play.new

  # while game_status == "running"

    input = gets
    input = input.chomp
    puts "Selected Piece: #{input}"
    while piece == false
      piece = play.select_piece input, board
    end
    # puts "Valid Piece: #{piece.icon}"
    # position = Position.new
    # while play.is_valid_move?
    #   position = play.select_move input
    # end

    # play.move play.selected_piece,

  # end
  # puts "END OF THE GAME"

  # pc = board.board[7][0]
  # play.move(pc, 5, 0, board)

end
