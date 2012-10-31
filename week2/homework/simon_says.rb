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
<<<<<<< HEAD

	def first_word(s)
		return s.split[0...1].join(' ')
=======
	
	def repeat(st, t=2)
		return "Go Away!" if t==0
		([st]*t).join(' ')
>>>>>>> f7e675fa7a88f9cdfc4b342f33e2567d897b5075
	end

end
