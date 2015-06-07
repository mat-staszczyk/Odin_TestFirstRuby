def add (a, b)
	a + b
end

def subtract (a, b)
	a - b
end

def sum (arr)
	sum = 0 
	arr.each { |a| sum+=a }
	sum
end

def multiply (arr)
	result = 1 
	arr.each { |a| result *= a }
	result
end

def power (a, b)
	b -= 1
	b.times do
		a *= a
	end
	a
end

def factorial (a)
	results = 1
	loop do 
		break if a <= 1
		results *= a
		a -= 1
	end
	results
end
