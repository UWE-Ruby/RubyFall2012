class OddNumber
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def succ
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



