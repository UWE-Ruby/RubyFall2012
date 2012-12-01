class Printer
	def print(book)
		"This book is a #{book.type}"
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

##wouldn't be class that is printing out. each type of book should know it's own printing value