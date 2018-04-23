#find the second largest element in the array
numbers=[89,24,75,11,23]
puts "the second largest number is #{numbers.sort[numbers.length-2]}"

puts "the second largest number is #{numbers.sort[-2]}"
