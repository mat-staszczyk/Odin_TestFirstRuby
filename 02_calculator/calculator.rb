def add (a, b)
  a + b
end

def subtract (a, b)
  a - b
end

def sum (nums)
  nums.inject(0) { |sum, x| sum += x } 
end

def multiply (*nums)
  result = 1
  nums.each { |x| result *= x }
  result
end

def power (base, power)
  base ** power
end

def factorial (x)
  if (x <= 1) then
    1
  else
    x * factorial(x-1)
  end
end
