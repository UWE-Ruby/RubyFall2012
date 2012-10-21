module SimonSays

	def echo(word)
		@word = word
		return "#{@word}"
	end

	def shout(word)
		@word = word.upcase
		return "#{@word}" 
	end

	def repeat(word, times=2)
		
		@word = "#{word}" 
		@final_word = @word

		for i in 1...times
			@final_word = @final_word + " " + "#{word}"
		end

		return @final_word
	end

	def start_of_word(word, end_pnt)
		@word = word
		return @word[0...end_pnt]
	end

	def first_word(word)
		@word = word.scan(/\w+/)
		return @word[0] 

	end
end