require pry
numbers =[-10,20,0]

numbers.each do |num|
	binding.pry
	if num < 0
		puts "less than zero"
		puts "negative number"
		binding.pry
	elsif num > 0
		puts "greter than zero"
		puts "positive number"
		binding.pry
	elsif num ==0
		puts "number is zero"
		binding.pry
	end
	puts "we are outside the condition"
end
puts "we are outside the loop"