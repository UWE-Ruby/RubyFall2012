puts "Please enter a noun"
noun = gets.chomp
puts "Please enter an adjective"
adjective = gets.chomp
puts "Please enter a past tense action verb"
verb_past_tense = gets.chomp
puts "Enter another noun"
noun1 = gets.chomp
story = "The #{adjective} #{noun} #{verb_past_tense} past the graveyard and ate the #{noun1}"
puts story
