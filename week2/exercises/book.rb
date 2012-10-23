class Book

<<<<<<< HEAD
	attr_reader :title, :pageCount

	def initialize(title, pageCount = "Not Given")
		@title = title
		@pageCount = pageCount
=======
	attr_accessor :title, :pages

	def initialize(title, pages)
		@title = title
		@pages = pages
	end

	def page_count
		"Page count is #{@pages}"
>>>>>>> 476e4b543ee68aad8bb809afdfe2207afd39e8e5
	end
end
