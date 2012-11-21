require "#{File.dirname(__FILE__)}/animal"

class Turkey < Animal
  attr_accessor :weight
  
  def initialize(weight)
    @weight = weight
  end
  def gobble_speak(words)
    words = words.gsub!((/\b[A-Z]\w*\b/), "Gobble")
    words = words.gsub!(/\b[a-z]\w*\b/, "gobble")
    words = words.gsub!(/\b\w*\'\w*\b/, "Gobb'le")
  end
end
