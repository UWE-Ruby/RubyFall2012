class Printer
	def print(book)
		"This book is a book"
		"This book is Fiction!" if book.is_a?(FictionBook)
	end
end

class Book
	attr_accessor :title, :author
end

class FictionBook < Book
end
