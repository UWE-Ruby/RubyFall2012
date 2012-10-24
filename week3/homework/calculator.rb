class Calculator

	def sum(num)
		num.inject(0,:+)
	end

	def multiply(num)
		num.inject(:*)
	end

	def power(num)
		num.inject(:**)
	end

	def factorial(num)
		(1..num).inject(0,:*)
	end
end