appetizers={
	"french_fries"=>90,
	"nachos"=>120,
	"mozerrella_cheese_sticks"=>150,
	"garlic_bread_cheese"=>110,
	"garlic_bread"=>110
}
puts appetizers
puts appetizers.class
puts appetizers.length

puts appetizers["nachos"]

puts appetizers.key(150)

puts appetizers.key(110)

puts "keys : #{appetizers.keys}"
puts "values: #{appetizers.values}"

appetizers["cheeze_salsa"]=90

puts appetizers

puts "#{appetizers.to_a}"

menu2d = appetizers.to_a

puts "#{menu2d[0]}"
puts "#{menu2d[0][0]}"
puts "#{menu2d[0][1]}"

puts "#{menu2d[7]}"

puts "listing menu"
appetizers.each do |key,value|
	puts "#{key}:INR #{value}"
end

