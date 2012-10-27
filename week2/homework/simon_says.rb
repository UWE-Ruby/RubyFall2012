module SimonSays

  def echo(text)
    text
  end

  def shout(text)
    # could also check to make sure the input responds to the UPCASE method
    # text.to_s.upcase OR text.upcase if respond_to?
    text.upcase
  end

  def repeat(text, repeater = 2)
    # return "Go Away!" if repeater == 0
    #([text]*repeater).join(' ')
    repeated_text = "#{text} " * repeater
    repeated_text.strip!
  end

  def start_of_word(word, length)
    # word[0...length]
    string = word[0,length]
  end

  def first_word(phrase)
    # word.split.first
    word = phrase.split(' ')[0]
  end

=begin
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
		([st]*t).join(' ')
	end
=end
  
end

