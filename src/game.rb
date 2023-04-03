require './src/player.rb'
require './src/turn.rb'
require './src/question_addition.rb'
require './src/input.rb'

class Game

  attr_accessor :whos_turn

  def initialize(starting_lives)
    @starting_lives = starting_lives
    @player1 = Player.new("Player1", starting_lives)
    @player2 = Player.new("Player2", starting_lives)
    @whos_turn = @player1
  end

  def play_turn
    turn = Turn.new(@whos_turn)
    until !turn.next_turn
      turn.steps
      puts "#{@player1.name}: #{@player1.lives}/#{@starting_lives} vr #{@player2.name}: #{@player2.lives}/#{@starting_lives}"
    end 
    puts "Player (n) wins with a score of (n)/3"
    puts "good-bye"
  end


end

#initilize the game
game = Game.new(3)

game.play_turn
