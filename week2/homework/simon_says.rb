module SimonSays
  def echo(message)
    message
  end

  def shout(message)
    message.upcase
  end

  def repeat(message,count = 2)
    Array.new(count, message).join(" ")
  end

  def start_of_word(word, count)
    word[0,count]
  end

  def first_word(sentence)
    sentence.split.first
  end
  #
  # Answers from instructor
  def echo_instructor(st)
    st
  end

  def shout_instructor(st)
    st.upcase
  end

  def first_word_instructor(st)
    st.split.first
  end

  def start_of_word_instructor(st,i)
    st[0...i]
  end

  def repeat_instructor(st, t=2)
    ([st]*t).join(' ')
  end
end
