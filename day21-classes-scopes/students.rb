class Student
	attr_accessor :name, :age, :gender
	@@students = []
	@@gender_ratio ={Male: 0, female: 0}
	def initialize(details)
		@name = formatter(details[:name])
		@age =details[:age]
		@gender =details[:gender]
		@@students.push(self)
		calculate_gender_ratio
	end
	#------------------- instance method starts here---------------------
	def details
		"#{self.name} - #{self.age}- #{self.gender}"
	end
	#-------------------instance method ends here------------------------

	#-------------------class methods starts here------------------------ 
	def self.all?
		@@students
	end

	def self.get_gender_ratio
		@@gender_ratio
	end
	#-------------------class method end here----------------------------
	#-------------------helper methods starts here-----------------------
	private
	
	def formatter(name)
		name.capitalize
	end

	def calculate_gender_ratio
		self.gender == "m"? @@gender_ratio[:male] += 1 : @@gender_ratio[:female] += 1
	end
	#-------------------helper methods end here-------------------------
end
s1 = Student.new({name:"suraj", age: 12, gender: "m"})
s2 = Student.new({name:"manju", age: 22, gender: "m"})
s3 = Student.new({name:"Rakshitha", age: 15, gender: "f"})
Student.all.each do |student|
	puts student.details
end
puts Student.get_gender_ratio
