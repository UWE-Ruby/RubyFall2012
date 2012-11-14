class Calculator
<<<<<<< HEAD
  def sum(num_array)
    num_array.inject(0) do |total, value|
      total + value
    end
  end
  
  def mult(x, y)
    x*y
  end
  
  def multa(num_array)
    num_array.inject(1) do |total, value|
      total * value
    end
  end
  
  def raiseby(x,y)
    x**y
  end
  
  def factorial(x)
    (1..x).inject(1) do |total, value|
      total*value
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
>>>>>>> 217a9fddb9c3593e5125cdc0b20bbd32afab6597
end

