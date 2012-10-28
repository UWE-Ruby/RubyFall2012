class Calculator
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