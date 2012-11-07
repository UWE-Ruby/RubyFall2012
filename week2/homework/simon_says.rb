module SimonSays
<<<<<<< HEAD
  def echo(message)
    message
  end
  
  def shout(message)
    message.upcase
  end
  
  def repeat(message,times_repeated=2)
    a = [message]*times_repeated
    a.join(" ")
  end
  
  def start_of_word(message,char=1)
    b = message.split(//)
    b[0...char].join
  end
  
  def first_word(message)
    c = message.split(/ /).to_a
    c[0]
  end
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
end
>>>>>>> c60983d0acfe2bba5021801c2cf14f56b297c72c
