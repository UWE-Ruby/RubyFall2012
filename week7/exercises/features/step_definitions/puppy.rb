class Puppy

  attr_accessor :name, :wags, :location

  def pet
  	wags = true
  end

  def ring
    wags ? location = "outside" : location = "inside"
  end

  def pee
    location = "inside" ? true : false
  end 

end

