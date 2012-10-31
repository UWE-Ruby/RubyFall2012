class Calculator
	def sum(a)
		a.inject(:+).to_i
	end

	def multiply(a)
		a.inject(:*)
	end

	def power(a, b)
		a ** b
	end

	def factorial(a)
		num = a.downto(1).reduce(:*).to_i
		[num, 1].max
	end
end