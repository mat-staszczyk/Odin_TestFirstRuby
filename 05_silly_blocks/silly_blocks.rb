def reverser 
  yield.split(' ').map(&:reverse).join(' ')
end

def adder (value = 1)
  yield + value
end

def repeater (n = 2)
  n.times { yield } 
end
