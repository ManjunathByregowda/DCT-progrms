n1 =10
n2 =20

def add(n1,n2)
# when a variables is difined inside a method its scope only with the method, here n3 is a local variables inside the method add, n3 can be used inside loops or iterators if it exits inside the method add	
	n3 =30
	puts n3 + 20
	
	2.times  do
		puts n3 + 10
	end
	return n1 + n2
end

puts add(n1,n2)
#puts n3-error-n3 is not availalbe outside the method
#puts n3	
