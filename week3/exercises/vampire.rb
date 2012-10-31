require './monster.rb'
class Vampire < Monster
	/this is a subclass of Monster/
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		/some default dangers, etc are added in the initialize because vampires share those things/
		super(noc,legs,name,vul,dangers)
		/this calls Monster, which in turn calls NamedThing/
	end
end
