#put module and take out class here to use the include method
class SimonSays
  attr_accessor :greetings

  def echo (greetings)
    @greetings = greetings

  end

  def shout( word1, options={})
    if options.empty?
      @shout = word1.upcase
    else
      puts word1.upcase + " " + options.upcase
    end
  end

  #def start_of_word(text, int)
   # @array = text.split(//)
   # @num = int - 1
   # @h = array[@num]
  #end

  def first_word(st)
    st.split.first
    #split with no parameters will split the string
    #look up documentation for string
    #look up array
    #use inspect method
  end

  def start_of_word(st,i)
    st[0...i]
  end

  def repeat(st, t=2)
    ([st]*t).join(' ') #converting st into array by placing it in square brackets. then multiply by 2. the join method
     # ['hi']* 2 will add another high into ['hi', 'hi']
  end


end
