module SimonSays
	def echo(text)
		text
	end
	def shout(text)
		text.upcase
	end
	def repeat(text,times=2)
		("#{text} " * times).rstrip
	end
	def start_of_word(text,letters=1)
		text[0,letters]
	end
	def first_word(text,words=1)
		# Could also be done with a regex
		text.split(" ").first
	end
end

# UWE-Ruby Answers
module SimonSays
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
		return "Go Away!" if t==0
		([st]*t).join(' ')
	end
end
