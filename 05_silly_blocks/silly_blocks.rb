def reverser 
  (yield.split(/ /).each { |x| x.reverse!}).join(' ')
end

def adder (x=1)
  yield + x
end

def repeater (x=1)
  x.times { yield }
end
