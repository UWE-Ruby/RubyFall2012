class Calculator

	# define sum and pass in the array
	def sum(array)
		@array = array
		if @array == []
			sum = 0
		else
		array.inject{|sum, x| sum +x}
		end
	end

	def multiply(number1, number2)
		@number1 = number1
		@number2 = number2
		multiply = @number1*@number2
	end

	def array_multiply(array)
		@array = array
		if @array == []
			array_multiply = []
		else
			array.inject{|multiply, x| multiply * x}
		end
	end

	def power(number, power)
		@number = number
		@power = power
		if @power == 0
			return 1
		elsif @power == 1
			return @number
		else
			return @number**@power
		end
	end

	def factorial(number)
		@number = number
		if @number == 0
			return 1
		elsif 
			new_array = (@number..1).to_a
			new_array.inject{|multiply, x| multiply *x}
		end
	end


end