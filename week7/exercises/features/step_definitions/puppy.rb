class Puppy
  attr_accessor :name
  def initialize
  end

  def pet
    wag
  end

  protected
  def wag
    "the puppy wags its tail"
  end
end
