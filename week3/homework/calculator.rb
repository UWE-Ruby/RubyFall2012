class Calculator
<<<<<<< HEAD
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
=======
	def sum(array)
		array.inject(0){|sum, x| sum +x}
	end

	def multiply(*numbers)
		puts numbers.inspect
		numbers.flatten.inject(:*)
	end

	def pow(base, p)
		#(1...p).to_a.inject(base){|r,v| r *= base}
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
>>>>>>> f7e675fa7a88f9cdfc4b342f33e2567d897b5075
end
