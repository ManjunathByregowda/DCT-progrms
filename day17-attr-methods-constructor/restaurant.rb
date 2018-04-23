class Restaurant
	#attributes - instance variables -@
	#name,address,phone_number

	#methods
	attr_writer :name, :address, :contact_number
	#setting up the writer methods for the attributes provided as arguments as symbols
	attr_reader :name, :address, :contact_number
	#setting up the reader methods for the attributes provided as arguments as symbols
end

r1 = Restaurant.new
r1.name = "Adigas"
r1.address = "Jayanagar"
r1.contact_number = 8496918848

r2 = Restaurant.new
r2.name = "A2B"
r2.address = "JPnagar"
r2.contact_number = 9845640162

puts "#{r1.name} - #{r1.address} - #{r1.contact_number}"
puts "#{r2.name} - #{r2.address} - #{r2.contact_number}"
