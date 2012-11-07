class Calculator
<<<<<<< HEAD
  
  def sum(input)
    output = 0
    input.each { |element| output += element }
    output
  end
  
  def multiply(input)
    output = 1 #since multiplying by zero always equals zero
    input.each { |element| output = output * element }
    output
  end
  
  def toThePowerOf(input, exponent)
    input **= exponent
  end
  
  def factorial(input)
    output = 1
    for i in 1..input do
      output *= i
    end
    output
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
end
>>>>>>> 217a9fddb9c3593e5125cdc0b20bbd32afab6597
