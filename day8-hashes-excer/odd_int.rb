numbers = [1,2,1,1,4,4,2,5,5,5,5]
count=0
numbers.each do |num|
	if numbers.count(num)
		count=num
	end
end
puts count
