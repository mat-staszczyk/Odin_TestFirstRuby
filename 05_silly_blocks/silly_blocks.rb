def reverser 
  yield.split(' ').map(&:reverse).join(' ')
end

def adder (value = 1)
  yield + value
end
