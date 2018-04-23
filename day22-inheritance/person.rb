#require 'pry'
#base class
class Person
	attr_accessor :name,:age,:gender
	def initialize(details)
		#binding.pry
		@name = details[:name]
		@age = details[:age]
		@gender = details[:gender]
		#binding.pry
	end
	def details
		#binding.pry
		"#{self.name} - #{self.age} - #{self.gender}"
	end
	def which_class
		#binding.pry
		"I belongs to #{self.class} class"
	end
end

#derived class
class Student < Person
	attr_accessor :contact

	def initialize(details)
		#binding.pry
		super(details)
		#binding.pry
		@contact = details[:contact]
		#binding.pry
	end
	def details
		"#{super} - #{self.contact}"
	end
end

p1 =Person.new({name: "manju", age: 10, gender: "m"})
puts p1.details
puts p1.which_class

s1 =Student.new({name: "Gowda", age: 23, gender: "m", contact: 8496918848})
puts s1.details
puts s1.which_class

class Teacher < Person
	attr_accessor :pan_no
	def initialize(details)
		super(details)
		@pan_no = details[:pan_no]
	end
	def details
		"#{super} - #{self.pan_no}"
	end
end
t1 = Teacher.new({name: "Santhosh", age: 40, gender: "m", pan_no: 434101017205})
puts t1.details
puts t1.which_class