class ContactForm
	attr_writer :name, :email, :subject, :phone, :message #accessors
	attr_reader :name, :email, :subject, :phone, :message

	def send_mail
		" You have recived a mail\n name:#{@name}\n email:#{@email}\n subject:#{@subject}\n phone:#{@phone}\n message:#{@message}"
	end
end

c1 = ContactForm.new
c1.name = "Manju"
c1.email ="manjunathabmn792@gmail.com"
c1.subject = "Ruby"
c1.phone = 8496918848
c1.message = "Thank u sir"

puts c1.send_mail 
