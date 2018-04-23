
numbers=[10,20,30,[10,20],30]
i=0
#puts numbers[3].class
numbers.each do |n|
	if n.class==Fixnum
		i = i+n.to_i
	else
		n.each do |m|
			i = i+m
		end
	end

end
puts i
