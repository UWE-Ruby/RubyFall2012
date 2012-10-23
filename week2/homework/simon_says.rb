module SimonSays

	def echo(text)
		text
	end

	def shout(text)
		text.upcase
	end

	def repeat(text,n=2)
		([text] * n).join(' ')
	end

	# I could have used the #first() method here, but this seemed cleaner.  Mostly becuase this is
	# pretty much what the actual #first() method does to begin with.  Why reinvent the wheel :)
	def start_of_word(text,n=1)
		text[0,n]
	end

	def first_word(text)
		text.split(' ')[0]
	end

end
