is_true = true
is_false = false
not_true = false

puts is_true
puts is_false

puts is_true.class
puts is_false.class

stock = {
	"marker" => 25,
"scale" => 10,
"note book" =>20
}

numbers = [1,2,3,4,5]
age = nil

puts numbers.include?(10)
puts numbers.empty?

puts age.nil?
puts numbers.nil?
puts 10.between?(3,20)

puts stock.has_key?("marker")
puts stock.has_key?("color")
puts stock.has_value?(25)
puts stock.has_value?(100)

puts 10.even?
puts 11.odd?
puts 0.zero?

puts nil == false
puts nil == nil