class Puppy
  attr_accessor :name
  def initialize
  end

  def pet
    wag
  end

  def ring_the_bell
  end

  protected
  def wag
    "the puppy wags its tail"
  end
end
