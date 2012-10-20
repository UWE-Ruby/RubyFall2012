module SimonSays
	def echo(text)
		text
	end
	def shout(text)
		text.upcase
	end
	def repeat(text,times=2)
		("#{text} " * times).chop
	end
	def start_of_word(text,letters=1)
		text[0,letters]
	end
	def first_word(text,words=1)
		# Could also be done with a regex
		text.split(" ").first
	end
end