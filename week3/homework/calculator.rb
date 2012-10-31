class Calculator
	def sum(sum_array)
		@sum_array = sum_array
		@sum = 0
		@sum_array.each {|x| @sum+=x}
		@sum
	end
	def multiplies(multiply_array)
		@multiply_array = multiply_array
		@multiply = 1
		@multiply_array.each {|x| @multiply*=x}
		@multiply
	end
	def power(power_array)
		@power_array = power_array
		@power = nil
		@power = @power_array[0]**@power_array[1]
		@power
	end
	def factorial(num)
		@num = num
		@factorial = nil
		if @num == 0
			@factorial = 0 
		else
			@factorial = 1.upto(@num).inject(:*)
		end
		@factorial
	end
end