class Book

	attr_accessor :title :pages
	/this builds the reader and writer for us! dynamically defining/
	/could also do attr_reader or attr_writer if only want one/

	def initialize (title, pages)
		@title = title
		@pages = pages
	end
		
	/def title
		@title
	end /

/this second method is the reader, it reads the value of title 
1.9.3-p194 :001 > load 'book.rb'
 => true 
1.9.3-p194 :002 > book = Book.new("Harry Potter")
 => #<Book:0x007fa793967688 @title="Harry Potter"> /

 	/def title=(title)
 		@title=title	
 	end/
 	/this guy's a writer/
end