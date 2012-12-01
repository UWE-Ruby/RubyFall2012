class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

#custom method_missing
	def method_missing(meth,*args, &block)
		puts “You called #{meth} with #{args.join(‘ ‘)}”	
		puts "#{self}"
		self.class.class_eval do 
			define_method(meth) do
				puts "hi"
			end
	end

	self.send(meth)

	def to_str
			"Hi, I'm a couch"
	end 

	def respond_to?(meth)
		true
	end

#count method
	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
#colors method
		define_method("#{s}_colors") do
			instance_variable_get("@#{s}").join(' ')
		end
	end
end

c=Couch.new["purple","pink","green"]

