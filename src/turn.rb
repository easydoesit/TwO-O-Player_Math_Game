class Turn

  attr_reader :next_turn

  def initialize(player)
    @player = player
    @question = Question_Addition.new
    @next_turn = true
  end

  def steps
    puts ""
    puts "----- NEW TURN -----"
    puts "#{@player.name}: #{@question.ask}"
    
    input = Input.new

    if input.val != @question.answer
      puts "Seriously? No!"
      @player.lose_life
    else
      puts "Yes! You are correct."
    end
    
  end

end