def	ftoc(temp)
	temp = (temp - 32)/1.8
	temp.ceil
end

def ctof(temp)
	temp = temp*1.8+32
end
