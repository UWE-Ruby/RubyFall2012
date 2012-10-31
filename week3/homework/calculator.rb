class Calculator
	def sum(num_array)
		sum = num_array.inject(0) {|sum, num| sum += num }
	end
    
	def multiply(*nums)
		num_array = *nums.flatten		
		num_array.inject(1) {|product, num| product *= num}
	end
    
	def pow(a, b)
		a ** b
	end
    
	def factorial(a)
		if a <= 1
			a
		else
			a * self.factorial(a - 1)
		end
	end
end
