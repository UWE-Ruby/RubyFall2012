module SimonSays
	def echo(something)
		something
	end
	def shout(something)
		something.upcase
	end
	def repeat(something, count=2)
		result = ""
		result.concat(something)
		(count-1).times do
			result.concat(" #{something}")
		end
		result
	end
	def start_of_word(something, count)
		something[0,count]
	end
	def first_word(something)
		something.split[0]
	end
end