str = "may 6 with arnab"
result = "#"
words = str.split(" ")
words.each do |word|
	result += word.capitalize #result = result + word.capitalize
	# puts "word : #{word}"
	# puts "results after concat #{result}"
end
puts result

str = "hello guys very good morming"
result = "#"
words = str.split(" ")
words.each do |word|
	puts result
	result += word.capitalize #result = result + word.capitalize
	# puts "word : #{word}"
	# puts "results after concat #{result}"
end
puts result