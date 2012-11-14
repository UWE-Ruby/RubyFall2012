class Calculator

	def sum(a)
		a.inject(:+).to_i
	end

<<<<<<< HEAD
	def multiply(a)
		a.inject(:*)
	end

	def power(a, b)
		a ** b
=======
	def multiply(*numbers)
		puts numbers.inspect
		numbers.flatten.inject(:*)
	end

	def pow(base, p)
		#(1...p).to_a.inject(base){|r,v| r *= base}
		pow_fac(base, p)
>>>>>>> 15e2934dd67bd9a431f1e6ce9ad8fc2e50446bbb
	end

	def factorial(a)
		num = a.downto(1).reduce(:*).to_i
		[num, 1].max
	end
end

