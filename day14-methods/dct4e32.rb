def airthmetic(n1,n2,a)
	case a
	when "add" 
		return n1 + n2
	when "sub"
		return n1 - n2
	when "mul"
		return n1 * n2
	when "div"
		return n1 / n2.to_f
	else
		return "invalid operator"
	end
end
puts airthmetic(5,2,"add")
puts airthmetic(5,2,"sub")
puts airthmetic(5,2,"mul")
puts airthmetic(5,2,"div")
puts airthmetic(5,2,"mod")
