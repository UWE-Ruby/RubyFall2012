require './monsters.rb'
require './monster.rb'

#How many monsters are nocturnal?
puts $monsters.find_all{|m| m[:nocturnal]}.count

#What are the names of the monsters that are nocturnal?

#How many legs do all mosnters have?
#puts $monsters.find_all{|m| m[:legs]}.count

