class Object
	def Object.call_chain
		"Object"
	end
end

class Animal
	# def call_chain
	# 	"Animal.#{super}"
	# end
end

module NamedThing
	def call_chain
		"NamedThing.#{super}"
	end
end

module Speaker
	# def call_chain
	# 	"Speaker.#{super}"
	# end
end

class Person < Animal
	include NamedThing
	include Speaker
	def call_chain(arg)
		"Person.#{super}"
	end
end

class Renee < Person
	def call_chain(arg, arg1)
		"#{self}.#{super(arg)}"
	end
end

