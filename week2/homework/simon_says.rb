 module SimonSays
	def echo(what)
		what
	end
	
	def shout(what)
		what.upcase
	end
	
	def repeat(what,number=2)
		((what + " ")*number).strip
	end
	
	def start_of_word(the_word, characters_to_keep)
		the_word.slice(0..characters_to_keep-1)
		# passing a range, but a) it starts at 0 not 1, b) using the parm 
	end
	
	def first_word(what)
		what.split[0]
		# split splits string by whitespace and results in an array :)
	end
end 