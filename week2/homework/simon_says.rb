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
<<<<<<< HEAD

	def first_word(string)
		a = string.scan(/[\w']+/)
		a[0]
=======
	
	def repeat(st, t=2)
		return "Go Away!" if t==0
		([st]*t).join(' ')
>>>>>>> f7e675fa7a88f9cdfc4b342f33e2567d897b5075
	end
end
