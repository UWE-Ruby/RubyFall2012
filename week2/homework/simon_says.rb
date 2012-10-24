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
   # @h = array[num]
  #end

  def first_word(st)
    st.split.first
  end

  def start_of_word(st,i)
    st[0...i]
  end

  def repeat(st, t=2)
    ([st]*t).join(' ')
  end


end