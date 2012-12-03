class Printer
	def print(book)
<<<<<<< HEAD
		book.print if book.respond_to? :print
=======
		"This book is a book"
		"This book is Fiction!" if book.is_a?(FictionBook)
>>>>>>> 4b2958513d06a8a3cac07f3785ec431b77644ba7
	end
end

class Book
	attr_accessor :title, :author
<<<<<<< HEAD
	def print
		"This is a book"
	end
end

class FictionBook < Book
	def print
		"This book is Fiction!"
	end
=======
end

class FictionBook < Book
>>>>>>> 4b2958513d06a8a3cac07f3785ec431b77644ba7
end
