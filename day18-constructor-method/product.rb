class Product
	attr_accessor :name, :price, :description
	@@count =0

	#constructor
	def initialize(item,price,description)
		@name= item
		@price= price
		@description= description
		@@count += 1
	end
	def self.count
		@@count
	end
end

# here the .new methods invokes / call the constructor ie initialize method.
p1 = Product.new("Marker", 10, "white board")
p2 = Product.new("pen",5,"book")
puts ("#{p1.name} - INR-#{p1.price} -#{p1.description}")

p1.price = 15
puts ("#{p1.name} - INR-#{p1.price} -#{p1.description}")

p1.name = "pen"
puts ("#{p1.name} - INR-#{p1.price} -#{p1.description}")
puts "total Products created #{Product.count}"