i = 0
def print_num(i)
	if i <= 100
		puts i
		print_num(i + 1)
	end

end
print_num(i)