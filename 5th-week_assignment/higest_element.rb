# Find Highest Number
class HighestElement
	attr_accessor :number
	def initialize(number)
		@number = number
	end
	def find_highest_element
		highest_number = 0
		@number.each do |num|
			if highest_number < num
				highest_number = num
			end
		end
		puts highest_number
	end
end
array = [1,2,3,4,5,6,5,4,3,2,1]
h1 = HighestElement.new(array)
h1.find_highest_element
