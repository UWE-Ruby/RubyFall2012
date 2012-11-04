class OddNumber
	attr_reader :value
	def intitialize(value)
		@value = value 
	end

	def succ
	  new_val = nil
	  if @value.even?
		  new_val = OddNumber.new(@value + 1)
	  else
		  new_val = OddNumber.new(@value + 2)
	  end
	  new_val
	end
	
	def <=> (other)
	
	end
end
