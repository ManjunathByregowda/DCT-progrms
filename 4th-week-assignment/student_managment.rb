class Student
	attr_accessor :name, :roll_number, :department, :course, :year_of_joining
	@@count = 0
	@@students = []

	def initialize(details)
		@name = details[:name]
		@roll_number = details[:roll_number]
		@department = details[:department]
		@course = details[:course]
		@year_of_joining = details[:year_of_joining]
		@@count += 1
		@@students.push(self)
	end
	def details
		"#{self.name} - #{self.roll_number}-#{self.department}-#{self.course} -#{self.year_of_joining}"
	end
	def self.count
		@@count
	end
	def self.all
		@@students
	end
	def self.joined_year(year)
		@@students.find_all{|student| student.year_of_joining == year }
	end
	def self.find_roll_number(roll_number)
		@@students.find_all{|student| student.roll_number == roll_number}
	end
end
s1 = Student.new({name: "Manju", roll_number: 01, department: "ECE", course: "BE", year_of_joining: 2013})
s2 = Student.new({name: "Gowda", roll_number: 02, department: "ECE", course: "BE", year_of_joining: 2012})
s3 = Student.new({name: "Nagesh", roll_number: 15, department: "ECE", course: "BE", year_of_joining: 2014})
s4 = Student.new({name: "Deepu", roll_number: 05, department: "EEE", course: "BE", year_of_joining: 2011})
s5 = Student.new({name: "Shivu", roll_number: 20, department: "CS", course: "BE", year_of_joining: 2013})

puts " enter the year"
year = gets.to_i
students = Student.joined_year(year)
	if students.empty?
		puts " No students are joined in this year #{year}"
	else
		students.each do |student|
		puts student.details
	end
end
puts " enter the roll number"
usn = gets.to_i
students = Student.find_roll_number(usn)
	if students.empty?
		puts " No students in this roll_number #{usn}"
	else
		students.each do |student|
		puts student.details
	end
end

