class OddNumber
	attr_accessor :value
	
	def initialize(value)
		@value = value unless value.even?
	end
	
	def succ
	  new_val = nil
	  if @value.even?
	    OddNumber.new(@value + 1)
    else
      OddNumber.new(@value + 2)
    end
    new_val
  end
  
  def <=> (other)
    @value <=> other.value
  end
end
		