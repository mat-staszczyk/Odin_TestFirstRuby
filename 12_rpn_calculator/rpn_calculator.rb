class RPNCalculator
  def initialize 
    @nums = []  
  end

  def push x
    @nums.push(x.to_f) 
  end

  def value 
    @nums[-1]
  end

  def plus 
    @nums.push(pop + pop)
  end

  def minus
    temp = pop
    @nums.push(pop - temp)
  end

  def divide
    temp = pop
    @nums.push(pop / temp)
  end
end
