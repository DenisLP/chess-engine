#!/usr/bin/ruby -w

require_relative 'board'
require_relative 'play'
require_relative 'position'


class Main
  game_status = "running" #running, white_win, black_win
  valid_move = false

  board = Board.new
  system('clear')
  puts "(q) to quit"
  board.to_s

  play = Play.new

  while game_status == "running"

    piece = false
    while piece == false
      piece = play.select_piece board
    end

    exit 0 if piece == "quit"

    move = false
    while move == false
      new_position = play.select_move piece, board
      exit 0 if new_position == "quit"
      move = play.possible_moves.check piece, new_position, board
      move = play.do_the_move piece, new_position, board unless move == false
      board.to_s
      puts "cleaned"
    end


  end

  puts "End of the game"

end
