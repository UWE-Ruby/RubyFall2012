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

	def start_of_word(text,n=0)
		text[0,n]
	end

	def first_word(text)
		text.split(' ')[0]
	end

end
