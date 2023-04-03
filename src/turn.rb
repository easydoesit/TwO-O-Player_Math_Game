require './src/input.rb'

class Turn

  def initialize(player, question)
    @player = player
    @question = question
  end

  def steps
    puts "----- NEW TURN -----"
    puts "#{@player.name}: #{@question.ask}"
    input = Input.new

  end

end