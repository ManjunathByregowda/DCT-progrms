num = [10,30,20,50,40]

arr = []
num.each_with_index do |n, a|
	num[a+1] > n
	arr.push(n)
end

puts arr