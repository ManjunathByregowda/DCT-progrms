#likes=["peter"]
#likes=["jacob","alex"]
#likes=["max","john","mark"]
likes=["manju","gowda","alex","jacob","mark","max"]
if likes.empty?
	puts "no one likes this"
elsif likes.length ==1
	puts "#{likes[0]} like this"
elsif likes.length==2
	puts "#{likes[0]} and #{likes[1]} like this"
elsif likes.length==3
	puts "#{likes[0]},#{likes[1]} and #{likes[2]} likes this"
elsif likes.length>=4
	puts "#{likes[0]},#{likes[1]} and #{likes.length - 2} others likes this"
end



if likes.empty?
	puts "no one likes this"
elsif likes.length>=4
	puts "#{likes.slice(0..1).join(",")} and #{likes.length - 2} others likes this "
end