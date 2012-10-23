puts "Please enter a noun"
noun = gets.chomp
puts "Please enter an adjective"
adjective = gets.chomp
puts "Please enter a past tense action verb"
verb_past_tense = gets.chomp
puts "Please enter an adverb"
adverb = gets.chomp
puts "Please enter another noun"
another_noun = gets.chomp
story = "The #{adjective} #{noun} #{verb_past_tense} past the graveyard #{adverb}, with his friend the #{another_noun}."
puts story
