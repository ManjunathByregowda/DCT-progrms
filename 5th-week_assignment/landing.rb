# Rover program
class Rover
	attr_accessor :x, :y, :orientation
	def initialize(x,y,orientation)
		@x = x
		@y = y 
		@orientation = orientation
	end
	def displayPosition
		puts "x is #{self.x} -- y is #{self.y} and orientation is #{self.orientation}"
	end
	def rotateLeft
		if @orientation == 'N'
			@orientation = 'W'
		elsif @orientation == 'W'
			@orientation = 'S'
		elsif @orientation == 'S'
			@orientation = 'E'
		elsif @orientation == 'E'
			@orientation = 'N'	
		end
	end
	def rotateRight
		if @orientation == 'N'
			@orientation = 'E'
		elsif @orientation == 'W'
			@orientation = 'N'
		elsif @orientation == 'S'
			@orientation = 'W'
		elsif @orientation == 'E'
			@orientation = 'S'
		end
	end
	def movePosition
		if @orientation == 'N'
			@y = @y + 1
		elsif @orientation == 'W'
			@x = @x - 1
		elsif @orientation == 'S'
			@y = @y - 1
		elsif @orientation == 'E'
			@x = @x + 1
		end
	end
end

puts "enter the x co-ordinate"
x = gets.chomp.to_i
puts "enter the y co-ordinate"
y = gets.chomp.to_i
puts "enter the orientation"
orient = gets.chomp
r = Rover.new(x,y,orient)
r.displayPosition

puts "enter the string"
string = gets.chomp

string.split("").each do |str|
	if str == 'L'
		r.rotateLeft
	elsif str == 'R'
		r.rotateRight
	else
		r.movePosition
	end
end
r.displayPosition