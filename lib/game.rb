class Game
attr_accessor :player, :opponent, :board, :menu_array, :cross, :circle, :menu_array, :turn, :field
attr_writer :name_player, :name_opponent
  def initialize()
    @cross = "X"
    @circle = "O"
    welcome
    input_player
    input_opponent
    @menu_array =["1 - [A1]", "2 - [A2]", "3 - [A3]",
                  "4 - [B1]", "5 - [B2]", "6 - [B3]",
                  "7 - [C1]", "8 - [C2]", "9 - [C3]"]
    # @board = Board.new
    # @field = @board
    # field
    @turn = @opponent
    field
    # def field
    #   return @board = Board.new
    # end
    # puts @board.win_path
  end

  def welcome
   puts "-------------------------------------------------"
   puts "|        Bienvenue sur TIC TAC TOE !            |"
   puts "-------------------------------------------------"
  end

  def input_player
    puts "Quels est ton nom Joueur?"
    print ">"
    @name_player = gets.chomp
    @player = Player.new(@name_player, @cross)
  end

  def input_opponent
    puts "Quels est ton nom Adversaire?"
    print ">"
    @name_opponent = gets.chomp
    @opponent = Player.new(@name_opponent, @circle)
  end

  def field
     @board = Board.new
  end

  def is_still_finish?
    # puts @board.win_path
    @board.win_path.each do |path|
      # if path != "XXX" || path != "OOO" # @menu_array.empty?# || ou le plateau est rempli
      #   then
      #   puts "pathhhhh : #{path}"
      #   return true
      if path == "XXX" || path == "OOO"
        break
      end
    end
  end

  def whoose_the_turn
    if @turn == @opponent
      puts "C'est le tours de #{@player.name}"
      @turn = @player
    elsif @turn == @player
      puts "C'est le tours de #{@opponent.name}"
      @turn =  @opponent
    end
  end


  def menu

    puts " " + "-"*32
    puts "      Quel est ton choix ! "
    puts " "+ "-"*32
    puts "| #{@menu_array[0]} | #{@menu_array[1]} | #{@menu_array[2]} |"
    # puts "|-----------|"
    puts "|" + "-"*32 + "|"
    puts "| #{@menu_array[3]} | #{@menu_array[4]} | #{@menu_array[5]} |"
    puts "|" + "-"*32 + "|"
    puts "| #{@menu_array[6]} | #{@menu_array[7]} | #{@menu_array[8]} |"
    puts "|" + "-"*32 + "|"
  end

  def menu_choice
    print ">"
    option = gets.chomp.to_i
      case option
        when 1
           # puts "xxx:#{x} iii: #{i}"
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
          # puts @menu_array[option.to_i - 1]

          # efface la possibilite de loption apres lavoir prise ou bien la remplacer pour qyuel soi inacessible
          # pour sa mettre menu en tableau puis affacer l element du menu
        when 2
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
        when 3
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
        when 4
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
        when 5
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
        when 6
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
        when 7
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
        when 8
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
        when 9
          @board.update_board(option.to_i - 1, @turn.symbole)
          @menu_array[option.to_i - 1] =  nil
        else
          puts "Donne moi un chiffre !"
        end
  end

  def end
    @board.win_path.each do |path|
      if path == "XXX"
        then puts "le joueur #{@player.name} a gagne !"
        return
      elsif path == "OOO"
        then puts "le joueur #{@opponent.name} a gagne !"
        return
      else
         puts "Match nul !"
         return
      end
    end
  end

end
