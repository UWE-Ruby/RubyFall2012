class Printer
	#def print(book)
	#	"This book is a book"
	#	"This book is Fiction!" if book.is_a?(FictionBook)
	#end
	#that is no bueno
	def print(book)
		book.print if book.respond_to? :print
	end
end

class Book
	attr_accessor :title, :author
	def print
		"this is a book"
	end
end

class FictionBook < Book
	def print
		"this book is fiction!"
		#each subclass has its own tagline that it prints out when .print is called of it
	end
end
