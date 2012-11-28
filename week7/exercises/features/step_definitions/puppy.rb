class Puppy
	attr_accessor :name, :wags, :is_out, :peeing, :hears_bell
	def initialize
		@wags = "the puppy is wagging its tail"
		@is_out = true
		@peeing = true
		@hears_bell = false
	end

	def is_pet
		"the puppy is wagging its tail"
	end
end
