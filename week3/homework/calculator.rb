class Calculator
  def sum(array)
    array.inject(0,:+)
  end

  def multiply(array)
    array.inject(:*)
  end

  def factoral(number)
    numb = []
    a = 1.step(number) {|i| numb << i}
    numb.inject(1,:*)
  end

  def exponent(number_1, number_2)
    number_1**number_2
  end
=begin teachers work
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
=end
end
