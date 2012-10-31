class Calculator
<<<<<<< HEAD

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
