numbers = [10,20,10,20,15,25,30,20]

puts numbers.length

puts "original array : #{numbers}"

puts "unique elements : #{numbers.uniq}"
puts "original array : #{numbers}"

numbers.push(13)
puts "original array : #{numbers}"

numbers.unshift(9)
puts "original array : #{numbers}"

numbers.insert(2,15)
puts "original array : #{numbers}"


numbers.pop
puts "original array : #{numbers}"

numbers.shift
puts "original array : #{numbers}"

numbers.delete_at(2)
puts "original array : #{numbers}"