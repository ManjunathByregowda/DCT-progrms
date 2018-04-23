numbers = [1,2,1,1,4,4,2,5,5,5,5]
number_hash = {}

numbers.each do |num|
	number_hash[num]=numbers.count(num)
end

puts number_hash

number_hash.each do |key,value|

	if value.odd?
		puts key
	end
end

=begin
array = ["white", "goodness"] #returns {'white'=>'goodness'}
Give = [[“white", "goodness"], ["blue", "tranquility"]]

Expect Output = [{'white'=>"goodness"},{'blue'=>"tranquility"}]
=end
