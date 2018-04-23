class Person
	def first_name=(first_name)# writer method for assigning methods
	 	@first_name = first_name
	end
	def last_name=(last_name)
		@last_name = last_name
	end
	def first_name # reader method for getting methods
		@first_name
	end
	def last_name
		@last_name
	end
	def details
		return "'Hello, #{@first_name} #{@last_name}!'"
	end
end
g1 =Person.new
g1.first_name = "Bob"
g1.last_name = "Smith"
puts g1.details