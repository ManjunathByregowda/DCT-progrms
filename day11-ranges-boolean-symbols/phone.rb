numbers = [1,2,3,4,5,6,7,8,9,0]

#numbers.slice(0..2).join
#[1,2,3]

#numbers.slice(0..2).join("")
# "123"

puts "(#{numbers.slice(0..2).join("")}) #{numbers.slice(3..5).join("")}-#{numbers.slice(6..9).join("")}"