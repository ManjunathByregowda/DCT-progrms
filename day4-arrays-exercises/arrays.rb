players = ["virat", "sachin", "dhoni","rahul"]

puts "reverse : #{players.reverse}"
puts "sort (ASC a-z) : #{players.sort}"

players.each do |p| #
	puts p.upcase
	puts p.capitalize
	puts p.downcase
end

numbers = [12,55,69,23,5,69]
numbers.each do |n|
	puts n + 1
end

numbers = [12,55,69,23,5,69]
numbers.each do |n|
	puts n - 2
end