class Puppy
	def name=(arg1)
		@name = arg1
	end
	def pet
		wag_tail
	end
	def wag_tail
		"Yayyyy!"
	end
	def ring_bell
		wag_tail
	end
	def take_dog_out
		@dog_walked = true
	end
	def pee?
		@dog_walked? false : true
	end
end