numbers=[10,20,30,40,20,50,20,20]
puts "enter the number to search"
search = gets.to_i
result = numbers.find {|n| n==search}
#returns the block variable when the element is found and comes out of iteration else returns nil if the element is not found
if result.nil?#boolean method reult==nil
	puts "number not found"
else
	puts "number is found"
end


results=numbers.find_all {|n| n==search}
if results.empty?
	puts "number is not found"
else 
	puts "number is found. it appears #{results.length} times"
end

=begin
returns all the occurances of the element as an array, we are searching for it continues to iterate till the end of
the array else if the element is not found,it returns an empty arry
=end