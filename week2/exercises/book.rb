class Book
	attr_reader :title, :author, :isbn
	def initialize(title, page_count, author="N/A", isbn="N/A")
		@title = title
		@author = author
		@isbn = isbn
		@page_count = page_count
	end
	def page_count
		"Page count is #{@page_count}"
	end
end
