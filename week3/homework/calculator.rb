class Calculator
	def sum(input)
		input.empty? ? 0 : input.inject(:+) #if input is empty array, return 0, else sum the elements
	end

	def product(*input) #takes multiple arguments, as an array
		input.length > 1 ? input.inject(:*) : input[0].inject(:*)
	end

	def power(base, power)
		base**power
	end

	def factorial(n)
		n == 0 ? 1 :  (n==1 ? 1 : n*factorial(n-1) ) #recursive definition, takes into account zero case using nested ternary
	end
end