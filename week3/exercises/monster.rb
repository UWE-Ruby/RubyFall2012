require './named_thing.rb'
class Monster
  include NamedThing
  attr_accessor :vulnerabilities, :dangers
  attr_reader :nocturnal, :legs
	
  def initialize(name="Monster", noc, vul = [], dangers = [], legs)
    super(name)
    @nocturnal = noc
    @vulnerabilities = vul
    @dangers = dangers
    @legs = legs
  end
end	
