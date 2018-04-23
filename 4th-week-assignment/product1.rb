class Product
    attr_accessor :name, :price, :category_id, :stock
    attr_reader :id

    @@count = 1
    @@products = []
    hash = {}
    def initialize(details)
        @id = @@count
        @name = details[:name]
        @price = details[:price]
        @category_id = details[:category_id]
        @stock = details[:stock]
        @@count += 1
        @@products.push(self)
    
    end

    def details
"#{self.id}---#{self.name}---INR#{self.price}---#{self.category_id}---#{self.stock}"
    end

    def self.all
        @@products
    end
    #find all the products whiose stock is greater than 100
    def self.find_by_stock
        @@products.find_all{|product| product.stock > 100}
    end
    #find all the products whose stock is greater than 50 and it belongs to category_id 1
    def self.find_by_category_id
        @@products.find_all {|product| product.category_id == 1 && product.stock > 50}
    end
    #find all the products between price range 100 to 250
    def self.find_by_price_range
        @@products.find_all {|product| product.price > 100 && product.price < 250}
    end
    #find all the products between the price range of 200 to 300 and that belonging to category_id 2
    def self.find_price_by_range_and_category_id
        @@products.find_all {|product| product.price > 200 && product.price < 300 && product.category_id == 2}
    end
    #find all the products whose price is decending order
    def self.find_price_by_decending_order
        @@products.sort {|x,y| y.price <=> x.price }
    end
    #find all the products whose name is in assending order
    def self.find_name_by_assending_order
        @@products.sort {|x,y| x.name <=> y.name }
    end
    #create a hash where the category_id becomes the key and all the produts that belongs to the category_id is value for teh key
    def self.find_hash_by_category_id(category_id)
        @@products.find_all{|x| x.category_id == category_id}
    end
end
p1 = Product.new({name: "board", price: 500, category_id: 1,stock: 10})
p2 = Product.new({name: "pen", price:5, category_id: 1, stock:1000})
p3 = Product.new({name: "Running shoe", price:500, category_id: 2, stock:50})
p4 = Product.new({name: "formal", price:600, category_id: 2, stock:800})
p5 = Product.new({name: "cassual", price:300, category_id: 2, stock:100})



products = Product.find_by_stock
if products.empty?
    puts " no products found "
else
    products.each do |product|
        puts product.details
    end
end
puts "*" * 20
products = Product.find_by_category_id
if products.empty?
    puts " no products found "
else
    products.each do |product|
        puts product.details
    end
end
puts "*" * 20
products = Product.find_by_price_range
if products.empty?
    puts " no products found "
else
    products.each do |product|
        puts product.details
    end
end
puts "*" * 20
products = Product.find_price_by_range_and_category_id
if products.empty?
    puts " no products found "
else
    products.each do |product|
        puts product.details
    end
end
puts "*" * 20
products = Product.find_price_by_range_and_category_id
if products.empty?
    puts " no products found "
else
    products.each do |product|
        puts product.details
    end
end
products = Product.find_price_by_decending_order
if products.empty?
    puts " no products found "
else
    products.each do |product|
        puts product.details
    end
end
puts "*" * 20
products = Product.find_name_by_assending_order
if products.empty?
    puts " no products found "
else
    products.each do |product|
        puts product.details
    end
end
puts "*" * 20
category_id = 1
products = Product.find_hash_by_category_id(category_id)
c=1
hash={}
hash[c] = Product.find_hash_by_category_id(c)
c=2
hash[c] = Product.find_hash_by_category_id(c)


puts hash