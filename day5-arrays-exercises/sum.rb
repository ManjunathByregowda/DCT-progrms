numbers = [10,20,30,40,50]

numbers.each do |num|
	puts num 
end



sum = 0 # locai variables
numbers.each do |num|
	#puts "sum : #{sum} num #{num}"
	sum = sum + num
	#puts "sum : #{sum} num #{num}"
end

puts "SUM (total) : #{sum}"



puts numbers.inject(:+)
puts numbers.inject(:*)




numbers = [10,-15,-35,30,20,-25]

sum_pos = 0
sum_neg = 0
numbers.each do |num|
	if num < 0
		sum_neg = sum_neg + num
	else
		sum_pos = sum_pos + num
	end
end

puts sum_neg
puts sum_pos


