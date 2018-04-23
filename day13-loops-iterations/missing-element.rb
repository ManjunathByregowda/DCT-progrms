numbers = [2,3,4,5,7]

i = 0
while i < numbers.length - 1
	if !(numbers[i] + 1 == numbers[i+1])
		puts numbers[i] + 1
	end
	i +=1
end



numbers = [2,3,4,5,7]

i = 0
missing = nil
while i < numbers.length - 1
	if !(numbers[i] + 1 == numbers[i+1])
		missing = numbers[i] + 1
	end
	i +=1
end
if missing.nil?
	puts "all elements present"
else
	puts "missing elements is #{missing}"
end
