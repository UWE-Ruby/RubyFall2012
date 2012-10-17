class Book
	
	attr_accessor :title, :page_count

	def initialize(title, page_count)
		@title = title
		@page_count = page_count
	end

	def page_count
		return "Page count is #{@page_count}"
	end

end

=begin
book1 = Book.new("Harry Potter")
puts book1.title

book1.title = "Serpent"
puts book1.title
=end