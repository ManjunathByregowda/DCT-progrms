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
	def self.stock_greater(stock)
		@@products.find_all{|product| product.stock >= stock}
		@@products.find_all{|product| product.stock >= stock}
	end
	def self.stock_category(stock)
		@@products.find_all {|product| product.category_id >= stock}
		stock <= stock_present_category_id
	end
end
p1 = Product.new({name: "board", price: 500, category_id: 1,stock: 10})
p2 = Product.new({name: "pen", price:5, category_id: 1, stock:1000})
p3 = Product.new({name: "Running shoe", price:500, category_id: 2, stock:50})
p4 = Product.new({name: "formal", price:600, category_id: 2, stock:800})
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
=begin
find all the products whose stock is greater than 100
    find all the products whose stock is greater than 50 and it belongs to category_id
    find all the products between price range 100 to 250
    find all the products between the price range of 200 to 300 and that belonging to category_id 2
    find all the products whose price is descending order
    find all the products whose name is in ascending order
    create a hash where the category_id becomes the key and all the products that belongs to the category_id is value for the key
    {
    "1" => [p1,p2]
    "2" => [p3,p4]
    }
=end
puts "enter the stock present"
stock_present = gets.to_i
products = Product.stock_greater(stock_present)
if products.empty?
	puts " no products found for this stock #{stock_present}"
else
	products.each do |product|
		puts product.details
	end
end

puts "Enter the category_id"
stock_category_id = gets.to_i
puts "enter the stock present"
stock_present_category_id = gets.to_i
products = Product.stock_category(stock_category_id)
if products.empty?
	puts " no products found for this stock #{stock_category_id}, INR #{stock_present_category_id}"
else
	products.each do |product|
		puts product.details
	end
end

