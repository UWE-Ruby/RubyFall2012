module SimonSays
	def echo(word)
		word
	end

	def shout(word)
		word.upcase
	end

	def repeat(word, times = 2)
		new_word = ""
		for i in 0 ... times
			new_word << " #{word}"
		end
		new_word.lstrip
	end

	def start_of_word(word, letters)
		word[0 ... letters]
	end

	def first_word(string)
		a = string.scan(/[\w']+/)
		a[0]
	end
end
