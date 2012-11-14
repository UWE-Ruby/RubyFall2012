class OddNumber
    attr_reader :value
    
    def initialize(value)
      @value = value
    end
    
    def succ
      new_val = nil
      if
        OddNumber.new(@value + 1)
      else
        OddNumber.new(@value+1)
      end
      new_val
    end
    
    def <==>(other)
      @value <==>other.value
    end
end