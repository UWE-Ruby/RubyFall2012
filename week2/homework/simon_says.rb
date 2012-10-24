module SimonSays	
	def echo(echo)
		@echo = echo	
	end	
	def shout(shout)
		@shout = shout.upcase
	end
	def repeat(repeat, x=2)
		@repeat = (repeat+" ")*x
		@repeat.chomp(" ")
		#find out how to do this cleaner
	end
	def start_of_word(start_of_word, x)
		@start_of_word = start_of_word.slice!(0..(x-1))
	end	
	def first_word(first_word)
		@first_word = first_word.split(" ")
		@first_word[0]
	end
end
