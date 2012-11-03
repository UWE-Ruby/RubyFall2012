require_relative 'animal'

class Turkey < Animal

  attr_reader :weight

  def initialize(weight = 0)
    @weight = weight
  end

  def gobble_speak(str)
    "Gobble Gobble Gobble gobble Gobble. Gobble Gobb'le Gobble Gobble"
  end
end
