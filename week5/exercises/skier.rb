class Skier
	attr_accessor :events
	# short hand for read & write 
	#def events
	#	@events
	#end
	#def events=(events)
	#	@events = events
	#end 
	def initialize(stuff=[:gs, :downhill]) 	# method name & method parameters = method signature. :gs &:downhill are the defaults	
		@events = stuff
		# @ is an instance variable - this *particular* skiier I just created has access to this variable
		# instance variables are the state (ie persistance), which is separate from behavior (ie initialize behavior)
	end
	def ski(event)
		count=event
		puts count  
		"This skier is skiing #{event}"
		#puts "This skier is skiing #{event}"
	end
end