puts "Please enter a noun"
noun = gets.chomp
puts "Please enter an adjective"
adjective = gets.chomp
puts "Please enter a past tense action verb"
verb_past_tense = gets.chomp
puts "Please enter a second noun"
noun2 = gets.chomp
puts "Please enter another adjective"
adjective2 = gets.chomp
puts "Please enter an exclamation"
exclamation = gets.chomp.upcase

story = "The #{adjective} #{noun} #{verb_past_tense} past the graveyard. The #{noun} spotted a #{adjective2} #{noun2}, and yelled '#{exclamation}!'"
puts story
