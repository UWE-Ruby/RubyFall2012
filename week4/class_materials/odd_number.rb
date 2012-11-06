class OddNumber
	attr_accessor :value

<<<<<<< HEAD
	def initialize (value)
		@value = value
	end
=======
	def initialize(value)
		@value = value
	end 
>>>>>>> f86ef48f01b2f530487a4fe320074634b7040078

	def succ
		new_val = nil
		if @value.even?
			new_val =OddNumber.new(@value + 1)
		else
			new_val =OddNumber.new(@value + 2)
		end
		new_val
	end

	def <=> (other)
<<<<<<< HEAD
	end
	
end
=======
		@value <=> other.value
	end
end

>>>>>>> f86ef48f01b2f530487a4fe320074634b7040078
