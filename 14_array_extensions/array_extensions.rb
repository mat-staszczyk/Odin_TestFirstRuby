class Array
	def sum
		result = 0
		self.each { |x| result += x }
		result
	end

	def square
		map { |x| x*x }
	end

	def square!
		map! { |x| x*x }
  end
end
