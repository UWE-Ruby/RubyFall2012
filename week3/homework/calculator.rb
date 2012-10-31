class Calculator
	def sum(array)
		array.inject(0, :+)
	end

	def multiply(number1, number2)
		number1 * number2
	end

	def multiply_array(array)
		array.inject(1, :*)
	end

	def exponent(number, power)
		number**power
	end

	def factorial(number)
		number == 0 ?	1 :	number * factorial(number - 1)
	end
end