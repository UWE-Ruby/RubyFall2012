class Book
<<<<<<< HEAD
	attr_accessor :title

	def initialize(title, page_count)
		@title = title
		@page_count = page_count
	end

	def page_count
		"Page count is #{@page_count}"
=======

	attr_accessor :title, :pages

	def initialize(title, pages)
		@title = title
		@pages = pages
	end

	def page_count
		"Page count is #{@pages}"
>>>>>>> uwe-ruby/master
	end
end
