class Book
	

	def initialize(title)
		@title = title
	end

	def page_count
		return "Page count is #{@page_count}"
	end

	def repeat(s, n = false)
		if n
			
		else
			return (s + " ") * 2
		end
	end


end

=begin
book1 = Book.new("Harry Potter")
puts book1.title

book1.title = "Serpent"
puts book1.title
=end
n = Book.new('afafa')
puts n.repeat('feet')
