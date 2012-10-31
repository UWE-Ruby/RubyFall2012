require './named_thing.rb'
class Monster
	include NamedThing
	attr_accessor :vulnerabilities, :dangers
    attr_reader :nocturnal, :legs
	
	def initialize(noc, legs, name="Monster", vul = [], dangers = [])

		/call super for name, because want to override the initialize, but not the name/
		/noc & legs are read-only, but vul & dangers can be updated/
		super(name)
		@nocturnal = noc
		@vlunerabilities = vul
		@dangers = dangers
		@legs = legs
	end
end	
