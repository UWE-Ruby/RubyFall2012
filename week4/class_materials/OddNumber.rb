class OddNumber
	attr_accessor :value

	def initializer(value)
		@value = value unless value.even?
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
		# <=> is "compares"
		@value <=> other.value
	end

end