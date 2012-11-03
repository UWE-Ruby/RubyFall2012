require_relative 'animal'

class Turkey < Animal

  attr_reader :weight

  def initialize(weight = 0)
    @weight = weight
  end
end
