class Question_Addition

  def initialize
    @x = rand(1...20)
    @y = rand(1...20)
  end

  def ask
    "What does #{@x} plus #{@y} equal?"
  end

  def answer
    @x + @y
  end

end