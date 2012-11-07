#http://www.ruby-doc.org/core-1.9.3/Range.html

class OddNumber
	#attr_reader :value
	# only set at intialization?
	attr_accessor :value
	def initialize(value)
		#@value = value unless value.even?
		@value = value
	end
	def succ
		new_val=nil
		if @value.even?
			new_val=OddMNumber.new(@value +1)
		else
			new_val=OddNumber.new(@value +2)
		end
		new_val
	end
	#def <=> 
	
end

