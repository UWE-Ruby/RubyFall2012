class Book
	attr_accessor :title, :pages
	#  make it optional with following syntax: page_count ="page_count"
	def initialize(title, pages)
		@title = title
		@pages = pages
	end

	def page_count
		"Page count is #{@pages}"
	end
end
