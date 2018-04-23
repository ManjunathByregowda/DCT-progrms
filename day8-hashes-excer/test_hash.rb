data={
	"coord"=>{
		"lon"=>76.55,
		"lat"=>12.31
		},
"weather"=>[
	{
		"id"=>802,
		"main"=>"clouds",
		"description"=>"scatterted clouds"
	}
],
"base"=>"Stations",
"main"=>{
		"temp"=>22.3,
		"temp_min"=>22.3,
		"temp_max"=>25.5
	},

"name"=>"mysore"
}
puts "the temperature in the city of #{data["name"]} (#{data["coord"]["lon"]}, #{data["coord"]["lat"]}) is #{data["main"]["temp"]}"
menu2d = data.to_a
puts menu2d


