class Board
attr_accessor :board_array,:win_array
attr_reader :letter, :number
  def initialize
    @board_array = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @letter = ["A", "B", "C"]
    @number = [1, 2, 3]
    @win_array = []
  end

  #board displaying the proper board[index] in its array format
  def display_board
    puts "   #{@letter[0]}  | #{@letter[1]}  | #{@letter[2]}  "
    puts "  -------------"
    puts " #{@number[0]}| #{@board_array[0]} | #{@board_array[1]} | #{@board_array[2]} |"
    puts "  |-----------|"
    puts " #{@number[1]}| #{@board_array[3]} | #{@board_array[4]} | #{@board_array[5]} |"
    puts "  |-----------|"
    puts " #{@number[2]}| #{@board_array[6]} | #{@board_array[7]} | #{@board_array[8]} |"
    puts "   ------------"
  end

  def win_path

    row_top = [@board_array[0], @board_array[1], @board_array[2]].join
    row_midlle = [@board_array[3], @board_array[4], @board_array[5]].join
    row_bottom = [@board_array[6], @board_array[7], @board_array[8]].join

    left_top_to_right_bottom = [@board_array[0], @board_array[4], @board_array[8]].join
    right_top_to_bottom_left = [@board_array[2], @board_array[4], @board_array[6]].join

    col_left = [@board_array[0], @board_array[3], @board_array[6]].join
    col_middle = [@board_array[1], @board_array[4], @board_array[7]].join
    col_right = [@board_array[2], @board_array[5], @board_array[8]].join
    puts "row top #{row_top}"
    return @win_array = [row_top, row_midlle, row_bottom,
                  left_top_to_right_bottom, right_top_to_bottom_left,
                  col_left, col_middle, col_right]
  end

  def update_board(index, symbole)
    # puts" iii #{index} sss#{symbole}"
    @board_array[index] = "#{symbole}"
    # puts @board_array[index]
    # @board_array[0] = "O"
    # puts @board_array[index]
    # puts @board_array
    # display_board

  end

end
