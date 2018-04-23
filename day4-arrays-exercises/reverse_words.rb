# DCT6ca9 - stop gninninpS SdroW

string = "hey fellow warriors"

#string = "this is a test"
result =""
string.split(" ").each do |word|
	if word.length >= 5
		result += "#{word.reverse}"
	else 
		result += "#{word}"
	end
end

puts result

	
result =""
string.split(" ").each do |word|
	if word.length >= 5
		result += word.reverse
	else 
		result += word
	end
end

puts result