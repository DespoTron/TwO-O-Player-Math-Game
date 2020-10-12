class Players

  attr_accessor :name, :lives
  
  def initialize(name, lives) 
    @name = name
    @lives = 3
  end

  def alive? # returns a boolean value
    @lives > 0
  end

end