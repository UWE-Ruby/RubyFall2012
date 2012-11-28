Class Object
	def call_chain
		"object"
	end
end

Class Animal
	def call_chain
		"#{self}.#{super}"
	end
end

module NamedThing
  def call_chain
		"#{self}.#{super}"
	end
end

class Person < Animal
  include NamedThing
  def call_chain
    "#{self}.#{super}
  end
end

class Renee < Person
  def call_chain
		"#{self}.#{super}"
	end
end


	