require './src/game.rb'
require './src/player.rb'
require './src/turn.rb'
require './src/question_addition.rb'
require './src/input.rb'

#initilize the game
game = Game.new(3)

game.play_turn