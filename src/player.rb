class Player

  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
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

  def lose_life
    @lives -= 1
  end

end
