class OddNumber
	attr_accessor :value

	def initialize(value)
		@value = value
<<<<<<< HEAD
	end
=======
	end 
>>>>>>> 15e2934dd67bd9a431f1e6ce9ad8fc2e50446bbb

	def succ
		new_val = nil
		if @value.even?
<<<<<<< HEAD
			
		else
			
		new_val
	end
end
=======
			new_val =OddNumber.new(@value + 1)
		else
			new_val =OddNumber.new(@value + 2)
		end
		new_val
	end

	def <=> (other)
		@value <=> other.value
	end
end

>>>>>>> 15e2934dd67bd9a431f1e6ce9ad8fc2e50446bbb
