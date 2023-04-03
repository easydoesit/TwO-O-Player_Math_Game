require './src/player.rb'
require './src/turn.rb'
require './src/question_addition.rb'

player1 = Player.new("Player1", 3)
player2 = Player.new("Player2", 3)

question = Question_Addition.new
turn = Turn.new(player1, question)

turn.steps

puts question.answer