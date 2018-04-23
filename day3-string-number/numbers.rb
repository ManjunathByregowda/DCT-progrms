score = "hundred"
average = "100"
n1 = 10
n2 = 12.5
n3 = 18.7
n4 = 16.2

puts n1.class # fixnum
puts n2.class # float
puts score.class #string
puts average.class # string

puts n2.round # 13
puts n3.round #19
puts n4.round  #16

puts n2 # 12.5

n2.round
puts n2 #13

puts n4.ceil #17
puts n3.floor #18

# type conversion
# fixnum to float
puts n1.to_f # 10.0
puts n1 #10

# float to fixnum
puts n2.to_i #12
puts n2 #12.5
n2 =n2.to_i
puts n2

# fixnum/float to string
n1 = n1.to_s
puts n1