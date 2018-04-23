winnerlist=[
	{"team" => "real madrid","country" => "spain"},
	{"team" => "munich" , "country" => "germany"},
	{"team" => "real madrid" , "country" => "spain"},
	{"team" => "real madrid" , "country" => "spain"},
	{"team" => "milan" , "country" => "italy"} 
]
puts "enter the country"
search_country=gets.chomp
count=0

winnerlist.each do |winner|
	if winner["country"]==search_country
		count = count+1
	end
end

if count==0
	puts "#{search_country} has not won so far"
else 
	puts "#{search_country} has won #{count} times"
end

