module SimonSays
<<<<<<< HEAD
  def echo(input)
    input
  end
  
  def shout(input)
    input.upcase
  end
  
  def repeat(input, num_of_repeats = 2)
    ((input + " ") * num_of_repeats).strip
  end
  
  def start_of_word(input, num_of_characters = 1)
    input[0...num_of_characters]
  end
  
  def first_word(input)
    input.split[0]
  end
=======
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
>>>>>>> 217a9fddb9c3593e5125cdc0b20bbd32afab6597
end

