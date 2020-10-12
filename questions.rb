class Questions
  attr_accessor :first_num, :second_num

  def self.first_num()
    @first_num = rand(1..20)
  end

  def self.second_num()
    @second_num = rand(1..20)
  end

  def self.validate(input)
    input.to_i == (@first_num + @second_num)
  end
  
end
