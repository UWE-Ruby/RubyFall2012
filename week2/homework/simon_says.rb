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
>>>>>>> 15e2934dd67bd9a431f1e6ce9ad8fc2e50446bbb
