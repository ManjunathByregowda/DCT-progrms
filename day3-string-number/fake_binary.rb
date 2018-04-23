number = 456128
num = number.to_s
num = num.split("")
count = 0
res = ""
while count < num.length
	if num[count].to_i >= 5
		res += "1"
	else
		res += "0"
	end
   count += 1
end		
puts res
