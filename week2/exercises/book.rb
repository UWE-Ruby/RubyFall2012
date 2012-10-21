class Book
	attr_accessor :title

	def initialize(title,page_count ="page_count") 
	  #accessible by instance methods
          @title = title
	end
	
	def page_count
         @page_count = "Page count is 200"
	end
end
