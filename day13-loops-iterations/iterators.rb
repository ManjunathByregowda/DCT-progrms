numbers = [10,20,30,40,50]

numbers.each do |num|
	puts num
end
	n = {}
numbers.each_with_index do |num, index|
	 n[index] = num
end
	puts n
for num in numbers
	puts num
end

10.times do
	puts "Manjunatha Byregowda"
end

puts "enter 5 value into the array"
numbers = []
5.times do
	numbers.push(gets.to_i)
end

stock ={
	cloth: 25,
	shoe: 100,
	mobile: 150
}

stock.each do |key, value|
	puts "#{key}"
	puts "*" * 20
	puts "#{value}"
end


