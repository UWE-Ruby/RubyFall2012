class Calculator
	def sum(array)
		return 0 if array.empty?
		array.inject(:+)
	end
	def multiply(array)
		return 0 if array.empty?
		array.inject(:*)
	end
	def power(one, two)
		one**two
	end
	def factorial(num)
		return 0 if num.zero?
		(1..num).inject(:*)
	end
end