#Write a ruby method which accept a string as input and swap the case of each character. 
#For example if you input 'The Quick Brown Fox' the output should be 'tHE qUICK bROWN fOX'.

def swap(str)
	names = str.split(" ")
	output = ""
	names.each do |name|
		output += name.slice(0,1).downcase + name.slice(1..name.length) + (" ")	
	end

	puts output 
 end

 swap(('The Quick Brown Fox').upcase)

# string = 'The Quick Brown Fox'

# 	def case_convert(input)
# 		input.swapcase
# 	end

# puts case_convert(string)