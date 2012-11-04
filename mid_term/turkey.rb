require_relative 'animal'

class Turkey < Animal

  attr_reader :weight

  def initialize(weight = 0)
    @weight = weight
  end

  def gobble_speak(str)
    out_str = ""
    out_str = str.gsub(/[A-Z]{1}[a-z]*/, "Gobble")      # replace capitalized words with 'Gobble'
    out_str.gsub!(/\b[a-z]+\b/, "gobble")               # replace lowercase words with 'gobble'
    out_str.gsub!(/[A-Z]{1}[a-z]+'[a-z]+/, "Gobb'le")   # replace capitalized words with an appostrophe with "Gobb'le"
    out_str.chomp!('.')                                 # remove trailing period
  end
end
