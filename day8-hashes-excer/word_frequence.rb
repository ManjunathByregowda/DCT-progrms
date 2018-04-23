require 'pry'
names = "virat sachin virat virat sachin dhoni"
players = names.split(" ")
puts players
player_hash = {}
players.uniq.each do |player|
	player_hash[player] = players.count(player)
end

puts player_hash
#binding pry
player_hash.each do |name,count|
	puts "#{name} - #{count}"

end

player_hash.each do |name,count|
	puts "#{name} - #{"*" * count}"
end