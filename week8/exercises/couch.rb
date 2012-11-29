class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

#	def pillow_colors
	#	@pillows.join(", ")
#	end

	#def cushion_colors
	#	@cushions.join(", ")
	#end

	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end
	
	[:pillow, :cushion].each do |s|
	  define_method ("#{s}_colors") do
	    instance_variable_get("@#{s}s").join(", ")
    end
  end
  
  def method_missing(meth,*args,&block)
    puts "You called #{meth} with #{args.join(' ')}"
    Self.class.class_eval do
      define_method(meth) do
        puts "hi"
      end
    end
    
    super
  end
end
