# number = [10, 20, 15, 25, 29]

# i = 0

# sum = 0


# while i < number.length
# 	if i % 2 == 0
# 		sum += number[i]
# 	end
# 	puts sum
# end

# puts sum

number = [10, 20, 15, 25, 29]

sum = 0

number.each_with_index do |num, ind|
	if ind % 2 == 0
		sum += num
	end
end
puts sum
