#require "pry" # a girl celebarating her 6 birthday, there are 6 candles on the cake 
candles = [1,2,3,1,2,3]
max_height = candles.max
puts "tall candles blown: #{candles.count(max_height)}"







max = candles[0]
candles.uniq.each do |height|
	if height > max
		max = height
	end
end

count = 0
candles.each do |height|
	#binding.pry
	if height == max
		count +=1
	end
end

puts"tall candles blown: #{count}"
