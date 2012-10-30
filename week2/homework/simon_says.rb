<<<<<<< HEAD
#simon says module for week 2 homework
module SimonSays
  #repeat the word back
  def echo(sound)
    "#{sound}"
  end
  
  #make the work uppercase
  def shout(sound)
    "#{sound.upcase}"
  end
  
#repeat a word 2 or 3 times, default is 2.
def repeat(sound,iterations = 2)
     if iterations == 2
       "#{sound} #{sound}"
     elsif iterations == 3
       "#{sound} #{sound} #{sound}"
     end
   end
end
  
  #return the first n letters of a word
  def start_of_word(word,letters)
    while word.length > letters do
      word.chop!
    end
    "#{word}"
  end
  
  #return the first word of 2
  def first_word(word)
    "#{word.split(" ")[0]}"
  end
  
=======
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
>>>>>>> 8475cd203003ed7e45baf4b7881552daf9656526
