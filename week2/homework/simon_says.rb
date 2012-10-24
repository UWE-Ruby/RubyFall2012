module SimonSays
<<<<<<< HEAD

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
=======
	def echo(st)
		st
	end
	
	def shout(st)
		st.upcase
	end

	def first_word(st)
		st.split.first
	end

	def start_of_word(st,i)
		st[0...i]
	end
	
	def repeat(st, t=2)
		([st]*t).join(' ')
	end
end
>>>>>>> 529b28228eac9e841374d40584eb6341ab03b2dd
