class Printer
	def print(book)
    book.print
	end
end

class Book
	attr_accessor :title, :author
end

class FictionBook < Book
  def print
		"This book is Fiction!"
  end
end
