Struct.new('Person', :full_name, :email) do
	def name
		"hello my name is #{:full_name}"
	end
end
p = Struct::Person.new('Renee', 'renee@awesome.us')

# or

Person = Struct.new(:full_name, :email)
p = Person.new('renee', 'nikky@awesome.us')