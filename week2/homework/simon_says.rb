module SimonSays

  def echo(str)
    str
  end
  
  def shout(str)
    str.upcase
  end
  
  def repeat(str, n=2)
    str = ((str + ' ') * n).strip
  end
  
  def start_of_word(str, n)
    str[0, n]
  end
  
  def first_word(str)
    str.split(' ').first
  end

<<<<<<< HEAD
=======
	def start_of_word(st,i)
		st[0...i]
	end
	
	def repeat(st, t=2)
		return "Go Away!" if t==0
		([st]*t).join(' ')
	end
end
>>>>>>> f7e675fa7a88f9cdfc4b342f33e2567d897b5075
