module SimonSays

	def echo(s)
		return s
	end

	def shout(s)
		return s.upcase
	end

	def repeat(s, n = false)
		if n
			return ((s + " ") * n).chomp(' ')
		else
			return ((s + " ") * 2).chomp(' ')
		end
	end

	def start_of_word(s, n)
		return s[0, n]
	end

	def first_word(s)
		return s.split[0...1].join(' ')
	end


end
