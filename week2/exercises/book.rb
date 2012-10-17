#!/usr/bin/env 

class Book
	attr_accessor :title, :count

	def initialize(title="title" ,count)
		@title = title
		@page_count = count
	end

	def title()
		@title
	end

	def page_count()
		@page_count
	end
end
