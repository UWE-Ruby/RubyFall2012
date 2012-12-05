
require './monster.rb'
load './named_thing.rb'
class Vampire < Monster
	include named_thing
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super(noc,legs,name,vul,dangers)
	end
end

class Human
include named_thing.rb


end


v = Vampire.new
puts v.shout_name

