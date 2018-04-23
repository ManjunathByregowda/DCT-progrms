sentance = "i love programming"
vowel = sentance.split("").find_all{|n| n =='a' || n =='A' || n =='e' || n =='E' || n =='i' || n =='I' || n =='o' || n =='O' || n =='u' || n =='U' }
puts vowel.count




string = "i LOVE programming"

def find_vowel(str)
	letters = str.downcase.split("")
	count = 0
	letters.each do |letter|
		case letter
		when 'a','e','i','o','u'
			count +=1
		end
	end
	return count
end
puts find_vowel(string)
