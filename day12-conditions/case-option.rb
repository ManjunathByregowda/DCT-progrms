n1 = 10
n2 = 20
count = 'y'
while count =='y'
	puts "1. add\n 2. sub\n 3. multiply"
	puts "enter your choice"
	option = gets.to_i
	case option
	when 1
		puts n1 + n2
	when 2
		puts n1 - n2
	when 3
		puts n1 * n2
	else
		puts "invalid option"
	end
	puts "do you wish to continue (y/n)"
	count = gets.chomp
end