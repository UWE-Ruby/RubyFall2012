#!/usr/bin/env ruby
puts "Please enter a ballin' noun"
noun = gets.chomp
puts "Please enter a slammin' adjective"
adjective = gets.chomp
puts "Please enter a past tense action-y verb"
verb_past_tense = gets.chomp
story = "The #{adjective} #{noun} #{verb_past_tense} around champville, home of the awesome squad."
puts story
