class Calculator
<<<<<<< HEAD
  def sum(numeric_array)
    numeric_array.inject(0) {|sum,element| sum+element}
  end
  
  def multiply(a,b)
    a*b
  end
  
  def multarray(numeric_array)
    numeric_array.inject(:*)
  end
  
  def exp(a,b)
    a^b
  end
  
  def factorial(x)
    (1..x).inject(:*) || 1
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
>>>>>>> answers
