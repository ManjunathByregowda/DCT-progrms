puts "enter the size of an array"
	a=gets.to_i
	b =Array.new
	puts "enter the array elements"
	for i in 0..a-1
	 b[i] = gets.to_i
	end
	k =b.size
	for j in 0..k
	  for l in 0..k
		if b[i] > b[i+1]
			temp =b[i]
			b[i] = b[i+1] 
			b[i+1] = temp	
		end
	  end
	end
	for i in 0..k
		puts "#{b[i]}"
	end