require './named_thing.rb'
class Monster
	include NamedThing #the module
	attr_accessor :vulnerabilities, :dangers
    attr_reader :nocturnal, :legs  #these are set
	
	def initialize(noc, legs, name="Monster", vul = [], dangers = [])
		super(name) 
		@nocturnal = noc
		@vlunerabilities = vul
		@dangers = dangers
		@legs = legs
	end
end	
