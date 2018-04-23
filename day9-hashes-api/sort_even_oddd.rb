numbers=[12,34,45,9,8,90,3]

even_numbers=numbers.find_all{|n| n.even?}.sort
odd_numbers=numbers.find_all{|n| n.odd?}.sort
p even_numbers
p odd_numbers
puts "#{even_numbers + odd_numbers}"	

#puts "#{(numbers.find_all{|n| n.even?}.sort)+(numbers.find_all{|n| n.odd?}.sort)}"	