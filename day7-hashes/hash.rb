mobiles=["9743904397","8971944890","9731937369","8762185632"]
puts mobiles[0]
puts mobiles[1]
mobiles={"asif"=>"9743904397","shiva"=>"8971944890","manju"=>"8496918848","karthik"=>"8762185632","ani"=>["8796589654","7762255664"]}
puts mobiles["ani"][0]
puts mobiles["manju"]
puts "numbers of asif is :#{mobiles["asif"]}"
puts "numbers of manju is : #{mobiles["manju"]}"
puts mobiles["ani"]

cafe=["shake it off","jayanagaar","Beverage shop",4.4,["89764613265","56987646546"],[
"Beverages","fast_food"],["home delivery","vegitarian only"]]
puts "cafe name #{cafe[0]}"
puts "cafe location #{cafe[1]}"
puts "cafe type #{cafe[2]}"
puts "rating #{cafe[3]}"

mobile={
	"9731937369"=>"manju",		
	"8762185632"=>"manju"
}
puts mobile["9731937369"]
cafe={
	"name"=>"shake it off",
	"locaktion"=>"jayanagaar",
	"type"=>"beverage shop",
	"rating"=>4.4,
	"contact"=>["89764613265","56987646546"],
	"cusines"=>["beverages","fast food"],
	"highlights"=>["home delivery","vegetarian only"]
}

puts "name #{cafe["name"]}"
puts "cusines #{cafe["cusines"]}"
puts "highlights #{cafe["highlights"]}"
puts "cafe highlights is :#{cafe["highlights"][0][5]}"
puts "cafe contact number is #{cafe["contact"][0]}"
puts "cafe rating is :#{cafe["rating"]}"
puts "cafe type is #{cafe["type"][0]}"
puts "cafe cusines are #{cafe["cusines"][0]} and #{cafe["cusines"][1]}"