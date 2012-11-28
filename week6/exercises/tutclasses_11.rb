class BookInStock
	attr_reader :isbn, :price
	def initialize(isbn, price)
		@isbn =isbn  
		@price = Float(price)
	end
	def price=(new_price)   # In Java this is a method parameter, in Ruby these are targets of assignments
		@price=new_price
	end
end
# P.34 Method parameters