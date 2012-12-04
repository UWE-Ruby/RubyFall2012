class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	[:pillow, :cushion].each do |s|
    define_method("#{s}_colors") do
      instance_variable_get("@#{s}.join(', '")
    end
  end

  def method_missing(meth, *args, &block)
    puts "you called #{meth} with #{args}"
  end
end
