require './src/player.rb'
player1 = Player.new("Player1", 3)
player2 = Player.new("Player2", 3)

#turn = Turn.new
puts player1.is_alive
puts player2.is_alive
puts player1.lives
puts player2.lives
puts player2.name
#puts player1
