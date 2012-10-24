module SimonSays
	def echo(st)
		st
	end
	
	def shout(st)
		st.upcase
	end

	def first_word(st)
		st.split(' ')[0]
	end

	def start_of_word(st,i)
		st.slice!(0..i-1)
	end
	
	def repeat(st, t=2)
<<<<<<< HEAD
		(st+" ")*(t-1)+st  # or could use Array join method.
	end
end
