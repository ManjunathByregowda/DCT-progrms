numbers = [10,20,30,40,50,60,70,10]
count=0
is_found=false
puts "enter the element"
num=gets
numbers.each do |n|
	if n==num.to_i
		is_found=true
		count+=1
	end 
end
if is_found
	puts "the entered element #{num} is present #{count} times in the array"	
else
	puts "#{num} not found"
end