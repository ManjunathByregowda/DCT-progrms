numbers = [10,20,-15,30,-20,-28]
sum_pos=0
sum_neg=0
numbers.each do |num|
	if num<0
		sum_neg=sum_neg+num
	else
		sum_pos=sum_pos+1
	end
end 
puts "the count of the positive #{sum_pos}"
puts " the addition of the negative numbers #{sum_neg}"