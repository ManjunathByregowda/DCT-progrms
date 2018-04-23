arrays = [10,[20,30],[40],50]

result = []

arrays.each do |array|
	if array.class == Array
		array.each do |a|
			result.push(a)
		end
	else
		result.push(array)
	end
end

puts result