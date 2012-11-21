class EvenNumber
	include Comparable	
	attr_reader :number 

	def initialize(number)
		if number.even?
		  @number = number
		else
		  @number = nil
		end  
	end
	def succ
		EvenNumber.new(@number + 2)
	end
	def <=>(other)
		@number <=> other.number
	end
	def inspect
	  @number
	end
end

	

