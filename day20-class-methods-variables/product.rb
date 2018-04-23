class Product
	attr_accessor :name, :price, :category_id, :stock
	attr_reader :id
	@@count = 1
	@@products = []
 
	def initialize(details)
		@id =@@count
		@name =details[:name]
		@price =details[:price]
		@category_id=details[:category_id]
		@stock =details[:stock]
		@@count +=1
		@@products.push(self)
	end
	def details
		"#{self.id} - #{self.name} - INR #{self.price} - #{self.category_id} - #{self.stock}"
	end
	def self.all
		@@products
	end
	def self.find(id)
		@@products.find {|product| product.id == id}
		# find_product = nil
		# @@product.each do |product|
		#if product.id == id
		#	find_product = product
		#end
	#end
	#return find_product
	end

	def self.find_by_category(category_id)
		@@products.find_all {|product| product.category_id == category_id}
		# products =[]
		#@@products.each do |product|
		#	if product.category_id == category_id
		#		products.push(product)
		#	end
		#end
		#return products
	end
	def self.price_less(price)
		@@products.find_all{|product| product.price <= price}
	end
	def self.price_greater(price)
		@@products.find_all{|product| product.price >= price}
	end
end
p1 = Product.new({name: "board", price: 500, category_id: 1,stock: 10})
p2 = Product.new({name: "pen", price:5, category_id: 1, stock:100})
p3 = Product.new({name: "Running shoe", price:500, category_id: 2, stock:50})
p4 = Product.new({name: "formal", price:600, category_id: 2, stock:80})
p5 = Product.new({name: "cassual", price:300, category_id: 2, stock:100})

puts "*"*25
puts "Listing Products"
puts "*"*25
products =Product.all
products.each do |product|
	puts product.details
end
puts "*"*25
puts "enter the product id to be search"
id = gets.to_i
product = Product.find(id)
if product.nil?
	puts " product with id #{id} is not found"
else
	puts product.details
end
puts "*"*25
puts "enter the category_id"
category_id = gets.to_i
products = Product.find_by_category(category_id)
if products.empty?
	puts "No products found for the category #{category_id}"
else
	products.each do |product|
		puts product.details
	end
end
puts "*"*25
puts "enter the max price "
max_price = gets.to_i
products = Product.price_less(max_price)
if products.empty?
	puts "No products found for this price #{max_price}"
else
	products.each do |product|
		puts product.details
	end
end
puts "*"*25
puts " enter the min price"
min_price = gets.to_i
products = Product.price_greater(min_price)
if products.empty?
	puts "No products found for this price #{min_price}"
else
	products.each do |product|
		puts product.details
	end
end

