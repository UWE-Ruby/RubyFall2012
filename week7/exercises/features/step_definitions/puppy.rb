class Puppy
  attr_accessor :name
  attr_reader :pee_on_floor

  def initialize
  end

  def pet
    wag
  end

  def ring_the_bell
    wag
  end

  def take_it_out
    @pee_on_floor = false
  end

  protected
  def wag
    "the puppy wags its tail"
  end
end
