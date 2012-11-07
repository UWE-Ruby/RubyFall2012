class Calculator
<<<<<<< HEAD

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
=======
	def sum(array)
		array.inject(0){|sum, x| sum +x}
	end

	def multiply(*numbers)
		numbers.flatten.inject(:+)
	end

	def pow(base, p)
		#(1..p).to_a.inject(1){|r,v| r *= base}
		pow_fac(base, p)
	end

	def fac(n)
	       #(1..n).to_a.inject(1){|f,v| f *= v}
	       pow_fac(n)
	end
private
	def pow_fac(base=nil, p)
		(1..p).to_a.inject(1){|f,v| f *= base || v}
	end	
end
>>>>>>> f7e675fa7a88f9cdfc4b342f33e2567d897b5075
