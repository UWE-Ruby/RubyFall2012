puts "Please enter a noun"
noun = gets.chomp 
puts "Please enter an adjective"
adjective = gets.chomp 
puts "Please enter a past tense action verb"
verb_past_tense = gets.chomp 
puts "Please enter a location"
location = gets.chomp 
story = "The #{adjective} #{noun} #{verb_past_tense} past the #{location}"
puts story
