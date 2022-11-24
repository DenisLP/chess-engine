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

    piece = false
    while piece == false
      piece = play.select_piece board
    end

    puts "Move #{piece.icon} to: " unless piece == "quit"
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
