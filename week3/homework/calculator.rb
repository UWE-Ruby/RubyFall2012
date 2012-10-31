class Calculator
<<<<<<< HEAD
        
        attr_reader:calculator
        
  	def sum(array)
          result = 0
          
          if array.empty?
           array = 0
          elsif
           array.flatten.each {|x| result += x }
           result
          end
          
  	end
  	
  	def multiply(array)
          array.inject {|y , x| y * x }
  	end
  	
  	def exponent(num, exp)
          (num ** exp)
  	end
  	
  	def factorial(num)
          result = 1
          1.step(num, 1){|n| result = (n * result); puts "n = #{n}, result= #{result}" } #<-- puts used for debugging
          result
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
>>>>>>> f7e675fa7a88f9cdfc4b342f33e2567d897b5075
