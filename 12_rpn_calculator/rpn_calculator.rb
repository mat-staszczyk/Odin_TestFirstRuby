class RPNCalculator
  def initialize 
    @nums = []  
  end

  def push x
    @nums.push(x.to_f) 
  end
end
