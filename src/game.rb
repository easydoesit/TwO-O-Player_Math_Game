require './src/player.rb'
require './src/turn.rb'

player1 = Player.new("Player1", 3)
player2 = Player.new("Player2", 3)

turn = Turn.new(player1)

puts turn.steps