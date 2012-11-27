HER ANSWERS

class Calculator
<<<<<<< HEAD
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
end
=======
	def sum(n)
		##error expectation
		return 0 if n.empty?
		n.inject(:+) 
	end
	def mul(n)
		n.inject(:*)
	end
	def power(n)
		n.inject(:**)
	end
	def factorial(n)
		return 0 if n==0
		(1..n).inject(:*)
	end
end

stuff = Calculator.new
p stuff.sum([7,11])
p stuff.mul([8,2,1,5])
p stuff.power([2,4])
p stuff.factorial(10)
>>>>>>> f22446d7c1ea0cf75d26c958547a3d11b80f5fd7
