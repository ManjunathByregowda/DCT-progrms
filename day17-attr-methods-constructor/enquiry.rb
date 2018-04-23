class Enquiry
	attr_writer :name, :email, :contact, :allow_permission
	attr_reader :name, :email, :contact, :allow_permission

	def send_mail
		"You have recived a new enquire\n name : #{@name}\n email : #{@email}\n contact : #{@contact}\n allow_permission : #{@allow_permission}"
	end
end

e1 = Enquiry.new
e1.name = "Manju"
e1.email = "manjunathabmn792@gmail.com"
e1.contact = 8496918848
e1.allow_permission = true

e2 = Enquiry.new
e2.name = "Gowda"

puts e1.send_mail
puts e2.send_mail