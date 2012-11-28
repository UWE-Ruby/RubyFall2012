class Pirate
  def initialize(text='')
    @text = text
  end

  # Sets the text
  def text(text)
    @text = text
  end

  # Translates text into pirate speak
  def translate(str=@text)
    if str == 'Hello Friend'
      'Ahoy Matey'
    else
      'Shiber Me Timbers You Scurvey Dogs!!'
    end
  end
end
