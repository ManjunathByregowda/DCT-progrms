require 'pry'
string = "i LOVE programming"

def find_vowel(str)
	letters = str.downcase.split("")
	count = 0
	vowels_hash = {
		'a' => 0,
		'e' => 0,
		'i' => 0,
		'o' => 0,
		'u' => 0
	}
	letters.each do |letter|
		case letter
		when 'a','e','i','o','u'
			#binding.pry
			vowels_hash[letter] +=1
			#binding.pry
		end
	end
	return vowels_hash
end
puts find_vowel(string)


