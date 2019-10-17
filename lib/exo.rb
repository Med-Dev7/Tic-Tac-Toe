class Board
attr_accessor :board_array, :letter, :number
  def initialize
    @board_array = ['x', 'o', 'x', ' ', ' ', ' ', ' ', ' ', 'x']
    @letter = ["A", "B", "C"]
    @number = [1, 2, 3]
  end

  #board displaying the proper board[index] in its array format
  def display_board
    puts "    #{@letter[0]} | #{@letter[1]} | #{@letter[2]} "
    puts "   -----------"
    puts " #{@number[0]}| #{@board_array[0]} | #{@board_array[1]} | #{@board_array[2]} |"
    puts "  |-----------|"
    puts " #{@number[1]}| #{@board_array[3]} | #{@board_array[4]} | #{@board_array[5]} |"
    puts "  |-----------|"
    puts " #{@number[2]}| #{@board_array[6]} | #{@board_array[7]} | #{@board_array[8]} |"
    puts "   -----------"
  end


#   def display_board
#     @board_hash.each do |key, value|
#
#       print "[#{key}#{value}]"
#       end
#     end
#   end

=======

    @alphabet_array = ["A", "B", "C"]
    @numerique_array = ["1", "2", "3"]
    @board_array = Array.new(){Array.new()}
  end

  def create_board

    for letter in 0..2
      for number in 0..2

         @board_array = [@alphabet_array[letter]+ @numerique_array[number]]

         print @board_array
      end
      puts "\n"
    end
  end

  def display_board
    @board_hash.each do |key, value|
      print "[#{key}#{value}]"
      end
    end
>>>>>>> 046f25c9a7fe26959b0a219f61d92e7ea4f3f16f

end
board = Board.new()
# board.create_board
board.display_board()
