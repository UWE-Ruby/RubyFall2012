class Skier
	#getting events instance variable from initialize 
	#attr_accessor is shorthand for 
	# def events @events end and def events=(events) @events = events end
	attr_accessor :events
	
        # don't forget
	def initialize(stuff=[:gs,:downhill])
            #instance variables, without instance variable you have no state at all, objects are cooler with states
	    @events = stuff
	end

	def ski(event)
	 "This skier is skiing #{event}"
	end
end
=begin


	def initialize(stuff=[:gs, :downhill])
		puts stuff
	end

	def ski(event)
		"This skier is skiing #{event}"
	end

end
=end
