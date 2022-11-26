class Printer

  def print_board board, info_message, input_message
    # puts "Size: "+board.size.to_s
    # puts "#{board[0][0].to_s}  #{board[0][1].to_s}  #{board[0][2].to_s}  #{board[0][3].to_s}  #{board[0][4].to_s}  #{board[0][5].to_s}  #{board[0][6].to_s}  #{board[0][7].to_s}"
    # puts "#{board[1][0].to_s}  #{board[1][1].to_s}  #{board[1][2].to_s}  #{board[1][3].to_s}  #{board[1][4].to_s}  #{board[1][5].to_s}  #{board[1][6].to_s}  #{board[1][7].to_s}"
    # puts "#{board[2][0].to_s}  #{board[2][1].to_s}  #{board[2][2].to_s}  #{board[2][3].to_s}  #{board[2][4].to_s}  #{board[2][5].to_s}  #{board[2][6].to_s}  #{board[2][7].to_s}"
    # puts "#{board[3][0].to_s}  #{board[3][1].to_s}  #{board[3][2].to_s}  #{board[3][3].to_s}  #{board[3][4].to_s}  #{board[3][5].to_s}  #{board[3][6].to_s}  #{board[3][7].to_s}"
    # puts "#{board[4][0].to_s}  #{board[4][1].to_s}  #{board[4][2].to_s}  #{board[4][3].to_s}  #{board[4][4].to_s}  #{board[4][5].to_s}  #{board[4][6].to_s}  #{board[4][7].to_s}"
    # puts "#{board[5][0].to_s}  #{board[5][1].to_s}  #{board[5][2].to_s}  #{board[5][3].to_s}  #{board[5][4].to_s}  #{board[5][5].to_s}  #{board[5][6].to_s}  #{board[5][7].to_s}"
    # puts "#{board[6][0].to_s}  #{board[6][1].to_s}  #{board[6][2].to_s}  #{board[6][3].to_s}  #{board[6][4].to_s}  #{board[6][5].to_s}  #{board[6][6].to_s}  #{board[6][7].to_s}"
    # puts "#{board[7][0].to_s}  #{board[7][1].to_s}  #{board[7][2].to_s}  #{board[7][3].to_s}  #{board[7][4].to_s}  #{board[7][5].to_s}  #{board[7][6].to_s}  #{board[7][7].to_s}"
    system('clear')
    puts info_message
    puts "\nK ♔, Q ♕, R1 R2 ♖, N1 N2 ♘, B1 B2 ♗, P1..P8 ♙\n\n"
    print_line board
    print input_message

  end

  def print_line board
    # puts "8|#{board[7][0].icon} #{board[7][1].icon} #{board[7][2].icon} #{board[7][3].icon} #{board[7][4].icon} #{board[7][5].icon} #{board[7][6].icon} #{board[7][7].icon}"
    # puts "7|#{board[6][0].icon} #{board[6][1].icon} #{board[6][2].icon} #{board[6][3].icon} #{board[6][4].icon} #{board[6][5].icon} #{board[6][6].icon} #{board[6][7].icon}"
    # puts "6|◻️ ◼️ ◻️ ◼️ ◻️ ◼️ ◻️ ◼️"
    # puts "5|◼️ ◻️ ◼️ ◻️ ◼️ ◻️ ◼️ ◻️"
    # puts "4|◻️ ◼️ ◻️ ◼️ ◻️ ◼️ ◻️ ◼️"
    # puts "3|◼️ ◻️ ◼️ ◻️ ◼️ ◻️ ◼️ ◻️"
    # puts "2|#{board[1][0].icon} #{board[1][1].icon} #{board[1][2].icon} #{board[1][3].icon} #{board[1][4].icon} #{board[1][5].icon} #{board[1][6].icon} #{board[1][7].icon}"
    # puts "1|#{board[0][0].icon} #{board[0][1].icon} #{board[0][2].icon} #{board[0][3].icon} #{board[0][4].icon} #{board[0][5].icon} #{board[0][6].icon} #{board[0][7].icon}"
    # puts

    (0..7).each do |row|
      print "#{row}|"

      (0..7).each do |column|
        print_square(row, column, board)

      end
      puts
    end

    puts "  - - - - - - - -"
    puts "  0 1 2 3 4 5 6 7"
    # puts "  A B C D E F G H"

  end

  def print_square row, column, board

    if board[row][column] == "."

      print "◻️ " if(row%2==0&&column%2==1) || (row%2==1&&column%2==0)
      print "◼️ " if(row%2==0&&column%2==0) || (row%2==1&&column%2==1)

    else

      print "#{board[row][column].to_s} "

    end
  end
end
