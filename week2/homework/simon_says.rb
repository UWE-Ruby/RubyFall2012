..
MINE
module SimonSays

  def echo(greeting)
    greeting
  end
  def shout(greeting)
    greeting.upcase
  end
  def repeat(greeting, n=2)
    ("#{greeting} " * n).chop
  end
  def start_of_word(greeting,n)
    greeting[0,n]
  end
  def first_word(greeting)
    "#{greeting}".split(' ')[0]
  end
end

HERS

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

