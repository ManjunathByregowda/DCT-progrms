number = [10, 20, 30, 40]
#output = [40, 30, 20, 10]

output = []

number.each do |n|
	output.unshift(n)
end

puts output