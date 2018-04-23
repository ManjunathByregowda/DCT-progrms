class Product
	attr_accessor :name, :price, :catrgory_id, :stock 
	attr_reader :id
	@@count = 1
	@@Product = []

	def initialize(details)
		@id = @@count
		@name = details[:name]
		@price = details[:price]
		@catrgory_id = details[:stock]
		@@count += 1
		@@Product.push(self)
	end
	def self.all
		@@Product
	end
end

p1 = Product.new({name: "marker", price: 10})
p2 = Product.new({name: "scale", price: 5})
puts "listing Products"
puts "*" * 20
Product.all.each do |product|
	puts "#{product.id} - #{product.name} - INR #{product.price}"
end