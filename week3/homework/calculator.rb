class Calculator

	def sum (numbers)
		value = 0
		# .each is a method to an enum, it is passed a block in this case an array. Think forloop
		numbers.each { |number| value = value + number }
		value
	end
	def multiply(numbers)
		value = 1
		numbers.each { |number| value = value * number }
		value
	end
	def power(n,e)
		a=Array.new(e)
		multiply(a.fill(n))
		# value = 1
		# (1..e).each { |x| value = value * n }
		# value
	end	
	def factorial(number)
		multiply(1..number)
	end
	
	def fact(n)
	# recursive solution
		if(n == 0) then 1
		else n * fact(n - 1)
		end
	end
end