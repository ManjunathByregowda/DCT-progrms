# require 'pry'
current_inventory =[
{name: "HTC", stock: 25},
{name: "Nokia", stock: 1000},
{name: "Samsung", stock: 50},
{name: "Sony", stock: 10}, 
{name: "Apple", stock: 15}
]
new_inventory=[
{name: "LG", stock: 5}, 
{name: "Sony", stock: 10},
{name: "Samsung", stock: 5}, 
{name: "Apple", stock: 15}
]
def update_inventory(current_inventory, new_inventory)
	new_inventory.each do |product_detials|
		#find the new product from new inventory is avialable in the current inventory
		product = current_inventory.find {|product| product[:name] == product_detials[:name]}
		if product.nil?# if product not in the stock push it into the current inventory
			current_inventory.push(product_detials)
		else# if the product is then present then, update the stock of product in the current inventory
			product[:stock] += product_detials[:stock]
		end
	end
	return current_inventory
end
puts update_inventory(current_inventory, new_inventory)