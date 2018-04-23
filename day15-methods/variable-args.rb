require 'pry'
def add(*values)
	binding.pry
	#return values.inject(:+)
	sum = 0
	values.each do |value|
		sum += value
	end
	return sum
end

puts add(10)
puts add(10,20)
puts add(10,20,30)
