class Player

  attr_accessor :name

  def initialize(name, lives)
    @name = name
    @lives = lives
    puts "#{@name} was initialized and has #{@lives} lives" 
  end

  def name
    @name
  end

  #gives us the players lives.
  def lives
    @lives
  end

  #gives tells us if the player is alive or not.
  def is_alive
    if @lives > 0
      return true
    else
      return false
    end
  end

end
