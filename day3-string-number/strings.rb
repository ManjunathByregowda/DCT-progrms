first_name = "manju"
last_name ="gowda"
middle_name = "nath"
password ="secert123"

# string concatenation
puts "welcome"  +  first_name

# string interpolation
puts "welcome #{first_name}"
puts "2 + 2 = #{2 + 2}"

puts first_name.capitalize
puts first_name.upcase

puts middle_name.capitalize
puts middle_name.downcase
puts "the length of the password is #{password.length}"

puts first_name.reverse

#internally strings are stored as an array of charecter
puts "the first charcter of password is #{password[0]}"

puts "vowel count in #{first_name} is #{first_name.count 'manjuAEIOU'}"


=begin
puts "2 + 2 =" + (2+2).to_s	
	
=end

puts names = "ramesh, suresh, mahesh"
puts names.split(", ") # ["ramesh", "suresh", "mahesh"] 

puts cricketers = "dhoni virat sachin rahul"
puts cricketers.split(" ") # ["dhoni", "virat", "sachin", "rahul"]

puts cricketers.split("").to_s # ["d", "h", "o", "n", "i", " ", "v", "i", "r", "a", "t", " ", "s", "a", "c", "h", "i", "n", " ", "r", "a", "h", "u", "l"] 

puts cricketers.split(", ") # ["dhoni virat sachin rahul"]

puts tags = "ruby - js - rails"
puts tags.split(" - ") # ["ruby", "js", "rails"] 

puts tags = "ruby - js = rails"
puts tags.split(" - ") # ["ruby", "js = rails"] 
