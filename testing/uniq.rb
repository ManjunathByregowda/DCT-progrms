num = [10,10,20,20,30,40,50,40]

arr = []

num.each do |n|
	if !(arr.include?(n))
		arr.push(n)
	end
end

puts arr


