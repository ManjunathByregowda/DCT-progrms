class Product
	attr_accessor :name, :price
	@@count = 0

	def initialize(name, price)
		@name = name
		@price = price
		@@count += 1
	end
	def details
		# inside a method the object which is invoking the method is referred by using the keyword self.		
		"#{self.name} - #{self.price}"
	end

	# class method - when the keyword self is used in the method defanation, it is a class method, here self is reffaring to the class invoking method
	def self.count
		@@count
	end

end

p1 = Product.new("marker",10)
p2 = Product.new("Borad",1000)
p3 = Product.new("scale", 30)

puts p1.details
puts p2.details
puts p3.details
puts "total Products created #{Product.count}"