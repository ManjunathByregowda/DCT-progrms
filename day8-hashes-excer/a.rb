# require 'pry'
# numbers = [1,2,1,1,4,4,2,5,5,5,5]
# count =0
# numbers.each do |num|
# 	binding.pry
# 	if numbers.count(num)%2==1
# 		binding.pry
# 		count=num
# 		binding.pry
# 	end
# end
# puts count

numbers = [1,2,1,1,4,4,2,5,5,5,5]
op = {}

numbers.uniq.each do |num|
	op[num] = numbers.count(num)
end

puts op

op.each do |n,count|
	if count % 2 == 1
		puts n
	end
end