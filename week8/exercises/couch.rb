class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end


	[:pillows, :cushions].each do |s|
		define_method("#{s}_colors") do
			instance_variable_get("@#{s}").join(", ")
		end
	end

	def to_str
		"I'm a couch and I'm covered in dogs"
	end #if you pass some rando crap as paramaters into a nonexistant method, it'll try to parse it to_str. when that doesn't work, you'll get a funny message instead.

	def

	def method_missing (sym,*args,&block) #doesn't work without this magical parenthesis stuff
		puts "no method, sucker"
		puts "you asked for #{sym} with #{args.join("")}"
		
		self.class.class_eval do
			define_method(sym) do
				puts "I'm a method"
			end
		end #this will work to make the method work the second time it's called. would work first time if you deleted the super below this.

		super #calling super here means that the response the superclass would give also shows up- namely the "no method error"
		#super with no arguments automatically passes along all the args passed into orig method
	end
	
end
