require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require  'game'
require 'player'
require 'board'


my_game = Game.new
# my_game.is_still_finish?
# my_game.field

# cree une boucle qui verifie si lq pqrtie est fini
while my_game.is_still_finish?

  # cree une condition qui verifie le tours
  if my_game.whoose_the_turn then
    # cree un board # @board = Board.new # actualiser et clear
    my_game.board.display_board
    # my_game.field.display_board
  #   # afficher menu
    my_game.menu
  #   # donner le choix au joueur qui sont disponible
    my_game.menu_choice()
  #   # actualiser la map
    # my_game.field.update_board
  end
end
my_game.end
binding.pry
