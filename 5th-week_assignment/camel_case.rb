# Find CamelCase 
class CamelCase
	attr_accessor :sentence
	def initialize(sentence)
		@sentence = sentence
		@words = sentence.split(" ")	
		@result = " "
	end
	def print_camelCase
		@words.each do |word|
			@result = @result + word.capitalize
		end
		return @result
	end
end
puts "enter the string"
c1 = CamelCase.new(gets.chomp)
puts "The camel case of the string is :#{c1.print_camelCase}"


