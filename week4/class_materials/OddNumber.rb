class OddNumber
	attr_accessor :number
	def initialize(n)
		@value = n
	end
	def secc
		if @value.even?
			new_val = OddNumber.new(@value + 1 )
		else
			new_val = OddNumber.new(@value + 2 )
		end
		new_val
	end
	def <=> (o)
		@value <=> o.value
	end
end
