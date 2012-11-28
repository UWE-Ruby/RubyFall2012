def my_enum 
	short_enum = [1,2,3].to_enum
	long_enum = ('a'..'z').to_enum

	loop do
	  puts "#{short_enum.next} - #{long_enum.next}"
	end
end

result = []

['a','b','c'].each_with_index {|item, index| result << [item, index] }
puts result

class Person
	def initialize(name)
		@name = name
	end

	def to_s
		"Person named #{@name}"
	end
end

p = Person.new("Stella")
puts p
