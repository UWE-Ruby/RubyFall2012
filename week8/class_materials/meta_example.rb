class Book
end


b = Book.new
b1 = Book.new

b.instance_eval do
	def cheese
		puts "cheesy"
	end
end

b.cheese
# b1.cheese <= this should error out
class Object
	def call_chain
		"self"
	end
end

module NamedThing
	def call_chain
		"#{NamedThing.super}"
	end
end

module Speaker
	def call_chain
		"#{self}.#{super}"
	end
end

class Animal
	def call_chain
		"#{self}.#{super}"
	end
end

class Person < Animal
	include NamedThing
	include Speaker
	def call_chain
		"#{self}.#{super}"
	end
end