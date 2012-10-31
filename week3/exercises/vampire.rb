require './monster.rb'
class Vampire < Monster
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super(noc,legs,name,vul,dangers)
	end
end
<<<<<<< HEAD

require './name_thing.rb'
class Vampire
    include NameThing
  end
=======
>>>>>>> f7e675fa7a88f9cdfc4b342f33e2567d897b5075
