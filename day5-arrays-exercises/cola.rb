names = ["sheldon","leonard","penny","rajesh","howard"]
count = 1
r=8

while count <= r

person = names.shift
names.push(person,person)
count += 1
end

puts "beginning #{names.first}"	