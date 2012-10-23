module SimonSays

	def echo(input)
		return input
	end

	def shout(input)
		return input.upcase
	end

	def repeat(input, times = 2)
		output = input
		(times - 1).times do
			output += " " + input
		end
			
		return output
	end

	def start_of_word(word, number_of_letters)
		return word[0...number_of_letters]
	end

	def first_word(phrase)
		return phrase.match(/\w*/)[0]
	end

end