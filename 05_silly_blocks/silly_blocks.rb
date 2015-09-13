def reverser 
  yield.split(' ').map(&:reverse).join(' ')
end
