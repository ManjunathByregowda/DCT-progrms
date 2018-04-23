numbers = [10,20,30,40,50]

puts "#{numbers}"
numbers.map do |num|
	puts num + 5
end

puts "#{numbers}"

numbers.map! do |num|
	num + 5
end

puts "#{numbers}"
