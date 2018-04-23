numbers = [1,2,1,1,4,4,2,5,5,5,5]
num_hash={}
numbers.each do |num|
	num_hash[num]=numbers.count(num)
end
puts num_hash
# writes the key having odd number value
num_hash.each do |key,value|
	if value.odd?
		puts key
	end
end

