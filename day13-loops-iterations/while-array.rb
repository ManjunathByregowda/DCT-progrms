numbers = [10,20,30,40,50]
# when more control is required while looping over an array
#add all the numbers in the even index
i = 0
sum = 0
while i < numbers.length
	sum += numbers[i]
	i += 2
end
puts sum
