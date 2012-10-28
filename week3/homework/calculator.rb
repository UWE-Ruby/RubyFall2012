class Calculator
	def sum(array)
		return 0 if array.empty?
		array.inject(:+)
	end
	def multiply(array)
		return 0 if array.empty?
		array.inject(:*)
	end
	def power(n1,n2)
		n1**n2
	end
	def factorial(n)
		return 0 if n.zero?
		(1..n).inject(:*)
	end
end