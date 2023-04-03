class Game

  attr_accessor :whos_turn
  attr_reader :player1, :player2

  def initialize(starting_lives)
    @starting_lives = starting_lives
    @player1 = Player.new("Player1", starting_lives)
    @player2 = Player.new("Player2", starting_lives)
    @whos_turn = @player1.name
  end

  def play_turn
    #if both players are still alive loop through turns
    while @player1.is_alive && @player2.is_alive
      #instatiate a new turn by passing in an object of one of the players
      
      @whos_turn == @player1.name ? turn = Turn.new(player1) : turn = Turn.new(player2)
       
      #go through the turn steps
      turn.steps
      #Update the score
      puts "#{@player1.name}: #{@player1.lives}/#{@starting_lives} vr #{@player2.name}: #{@player2.lives}/#{@starting_lives}"
      
      #change who's turn it is
      @whos_turn == @player1.name ? @whos_turn = @player2.name : @whos_turn = @player1.name    
    end

    #find the winner
    winner = @player1.lives > @player2.lives ? @player1 : @player2
    
    #display final message.
    puts "#{winner.name} wins with a score of #{winner.lives}/#{@starting_lives}"
    puts "Good-bye!"
  
  end

end
