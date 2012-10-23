class Book

	attr_reader :title, :pageCount

	def initialize(title, pageCount = "Not Given")
		@title = title
		@pageCount = pageCount
	end
end
