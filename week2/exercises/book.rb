class Book
<<<<<<< HEAD
  attr_accessor :title, :page_count
  
  def initialize(title, page_count)
    @title = title
    @page_count = page_count
  end
  
  def page_count
    "Page count is #{@page_count}"
  end
=======

	attr_accessor :title, :pages

	def initialize(title, pages)
		@title = title
		@pages = pages
	end

	def page_count
		"Page count is #{@pages}"
	end
>>>>>>> 476e4b543ee68aad8bb809afdfe2207afd39e8e5
end
