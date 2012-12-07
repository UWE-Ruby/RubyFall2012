class PirateTranslator

  def initialize(english)
    @english = english
  end

  def translate
    pirate_speak = @english
    pirate_speak.gsub!("Hello", "Ahoy")
    pirate_speak.gsub!("Friend", "Matey")
    pirate_speak << "\nShiber Me Timbers You Scurvey Dogs!!"
  end
end
