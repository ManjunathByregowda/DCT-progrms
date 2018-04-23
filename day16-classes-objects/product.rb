# class is a blue print of an object.
class Product
	# Setter Method / Writter Method
	def name=(name)
		@name = name
	end
	def price=(input_price)
		@price = input_price
	end

	#Getter Method / Reader Method
	def name
		# here return is not mandatory, because in ruby the last statement executed in a method is  the returned value.
		@name
	end
	def price
		@price
	end
	def details
		"#{@name} - INR #{@price}"
	end
end

p1 = Product.new 
puts p1.class  #product
p1.name = "Essence running shoes" #writter method
puts p1.name #reader method
p1.price = 590 # writter method
puts p1.price #reader method

p2 = Product.new
p2.name = "addidas"
puts p2.name
p2.price =400
puts p2.price
puts p1.details
puts p2.details
