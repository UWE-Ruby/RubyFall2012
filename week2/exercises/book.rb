class Book

	attr_reader :title, :pages

	def initialize(title, pages)
		@pages = pages
		@title = title
	end

	def page_count
		"Page count is #{@pages}"
	end

end
