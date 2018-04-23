numbers=[-10,20,2,3,1,10,50]
sum=0 
numbers.each do |num|
	if num<10 && num>1
		sum=sum+num
	else
		puts "this number is not in the range : #{num}"
	end
end 
puts "the count of the positive #{sum}"


