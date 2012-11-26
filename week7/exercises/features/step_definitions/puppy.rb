class Puppy
	attr_accessor :name, :tail, :pee

	def initialize
	end

	def pet
		self.wag_tail
	end

	def ring_bell
		self.wag_tail
		@pee = "on the floor"
	end

	def walk
		@pee = "outside"
	end

	protected
	def wag_tail
		@tail = "wagging"
	end
end