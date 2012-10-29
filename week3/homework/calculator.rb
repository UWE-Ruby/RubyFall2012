class Calculator
        
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
