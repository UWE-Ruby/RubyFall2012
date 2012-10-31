require './monster.rb'
class Vampire < Monster
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super(noc,legs,name,vul,dangers)
	end
end

require './name_thing.rb'
class Vampire
    include NameThing
  end