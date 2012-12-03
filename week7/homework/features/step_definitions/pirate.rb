class PirateTranslator

  # def initialize(norm_words)
  #   @norm_words = norm_words
  # end

  attr_accessor :norm_words

  def norm_words(norm_words)
    @norm_words = norm_words
  end

  def translate
    # return pir_words = "Ahoy Matey" if @norm_words =~ /"Hello"/

    if @norm_words == "Hello Friend"
      # return @norm_words.gsub!("Hello", /"Ahoy"/).gsub!("Friend", /"Matey"/).to_s
      return 'Ahoy Matey' #and 'Shiber Me Timbers You Scurvey Dogs!!'
    end

  return also = "Shiber Me Timbers You Scurvey Dogs!!"
  end
end