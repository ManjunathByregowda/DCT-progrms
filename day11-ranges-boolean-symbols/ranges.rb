in_number = 1..10
puts in_number

ex_numbers = 1...10
puts ex_numbers

puts ex_numbers.begin
puts ex_numbers.first

puts ex_numbers.last
puts ex_numbers.end

puts ex_numbers.include?(10)
puts ex_numbers.include?(5)

alphabets ='a'..'z'
puts alphabets

puts "list of alphabets"
alphabets.each do |alphabet|
	puts alphabet
end