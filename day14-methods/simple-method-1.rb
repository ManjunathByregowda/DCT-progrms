n1 = 10
n2 = 20

def change(n1,n2)
	n1=15
	n2=25
	puts "inside methods #{n1} - #{n2}"
end

# when we are passing local variables as arguments, we are passing a copy of the local variables
puts change(n1,n2)
puts "outside methods #{n1} - #{n2}"