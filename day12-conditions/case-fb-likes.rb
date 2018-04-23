likes=["manju","gowda","alex","jacob","mark","max"]
case
when likes.empty?
	puts "no one likes this"
when likes.length ==1
	puts "#{likes[0]} like this"
when likes.length==2
	puts "#{likes[0]} and #{likes[1]} like this"
when likes.length==3
	puts "#{likes[0]},#{likes[1]} and #{likes[2]} likes this"
when likes.length>=4
	puts "#{likes.slice(0..1).join(",")} and #{likes.length-2} others likes this "
end