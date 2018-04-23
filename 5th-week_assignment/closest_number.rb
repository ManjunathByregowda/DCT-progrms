# Find Closest 
class Closest
	attr_accessor :number, :first_closest_number, :second_closest_number
	def initialize(n , m)
		@n = n
		@m = m
	end
	def find_closest
		@number = @n / @m
		@first_closest_number = @m * @number
		@second_closest_number = (@m * @n) > 0 ? (@m * (@number + 1)) : (@m * (@number - 1))
		puts "The first_closest_number is ==> #{self.first_closest_number} and second_closest_number is ==> #{self.second_closest_number} "
		if (@first_closest_number) < (@second_closest_number)
			@first_closest_number
		else
			@second_closest_number
		end
	end
end
puts "enter the value for n"
first_number = gets.chomp.to_i
puts "enter the value for m"
second_number = gets.chomp.to_i
c1 = Closest.new(first_number , second_number)
closest_number = c1.find_closest
puts "the closest number is #{closest_number}"