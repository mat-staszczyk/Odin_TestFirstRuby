class Array
	def sum
		result = 0
		self.each { |x| result += x }
		result
	end
end
