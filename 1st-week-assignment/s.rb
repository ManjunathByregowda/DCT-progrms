#Find the count of element present in the array
numbers = [10,20,30,40,50,60,70,10]; 
count=0
puts "enter the element"
num=gets.to_i
numbers.each do |n|
	if n==num
		count+=1
	end 
	
end
puts "the entered element is present #{count} times in the array"	
