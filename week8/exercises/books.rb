class Printer
	def print(book)
		book.print if book.respond_to? :print
	end
end

class Book
	attr_accessor :title, :author
	def print
		"This is a book"
	end
end

class FictionBook < Book
	def print
		"This book is Fiction!"
	end
end
