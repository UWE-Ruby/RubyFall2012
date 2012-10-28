class Calculator
	def sum(array)
		@array = array
		@sum = 0
		@array.each {|x| @sum+=x}
		@sum
	end
end