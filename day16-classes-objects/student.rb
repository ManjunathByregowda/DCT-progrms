class Student
	def name=(name)
		@name = name
	end
	def age=(age)
		@age = age
	end
	def gender=(gender)
		@gender = gender
	end
	def name
		@name
	end
	def age
		@age
	end
	def gender
		@gender
	end
	def details
		return "#{@name} #{@age} #{@gender}"
	end
end
Student.new
c1 = Student.new
c2 = Student.new
c1.name = "Manju"
puts c1.name
c1.age = 22
puts c1.age
c1.gender = "Male"
puts c1.gender

c2.name = "gowda"
puts c2.name
c2.age = 23
puts c2.age
c2.gender = "Male"
puts c2.gender

puts c1.details
puts c2.details
