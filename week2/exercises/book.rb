class Book
	attr_accessor :title, :page_count
		
	def initialize(title,page_count)
	# parms to the constructor OR instance variables
	# @ = self.  in java this.
		@title=title
		self.page_count = "Page count is #{page_count}" 
	end
		
end
