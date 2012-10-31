module HereDocument
	def string=<<-END_OF_STRING
	The body
	of the string
	is the input lines up to
	one starting with the same
	text followed the '<<'
	END_OF_STRING;
	
	puts string
	end
end