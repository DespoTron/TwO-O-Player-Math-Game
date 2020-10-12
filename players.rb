class Players

  attr_accessor :name, :lives
  
  def initialize(name) 
    @name = name
    @lives = 3
  end

  def incorrect
    @lives -= 1
  end

  def gameover 
    @lives == 0
  end

end