=begin
	class Client
	attr_accessor :id, :name, :email, :mobile, :company, :website

	def details
		"#{@id} - #{@name} - #{@mobile} - #{@company}"
	end
end
class Project 
	attr_accessor :id, :name, :Client_id, :start_date, :end_date, :buddget

	def details
	"#{@id} - #{@name} - #{@Client_id} - #{@start_date} - #{@end_date} - #{@buddget}"
	end 
end

c1 = Client.new
c1.id = 1
c1.name = "Manju"
c1.email = "manjunathabmn792@gmail.com"
c1.mobile = 8496918848
c1.company = "Graficon"
c1.website = "www.graficon.com"

c2 = Client.new
c2.id =2
c2.name = "Gowda"
c2.email = "gowda@gmail.com"
c2.mobile = "9845640162"
c2.company = "Infosys"
c2.website = "www.infosys.com"

p1 = Project.new
p1.id = 1
p1.name = "branding"
p1.Client_id =
p1.start_date = 
p1.end_date = 
p1.buddget = 

p2 = Project.new
p2.id = 2
p2.name = 
p2.Client_id =
p2.start_date = 
p2.end_date = 
p2.buddget = 
=end

class Client
	attr_accessor :id, :name, :mobile, :email, :company, :website
	
	def details
		"#{id} - #{name} - #{mobile} - #{company}"
	end
end

class Project
	attr_accessor :id, :name, :client_id, :start_date, :end_date, :budget, :description

	def details
		"#{id} - #{name} - #{client_id} - #{start_date} - #{end_date} - INR #{budget} - #{description}"
	end
end

c1 = Client.new
c1.id = 1
c1.name = "Santosh"
c1.mobile = "1234567890"
c1.email = "Santosh@gmail.com"
c1.company = "Graficon"
c1.website = "www.graficon.com"

c2 = Client.new
c2.id = 2
c2.name = "Adarsh"
c2.mobile = "0987654321"
c2.email = "adarsh@gmail.com"
c2.company = "Inliguia"
c2.website = "www.inliguia.com"

p1 = Project.new
p1.id = 1 
p1.name = "Branding for graficon"
p1.client_id = c1.id
p1.start_date = "2017-09-20"
p1.end_date = "2017-10-20"
p1.budget = 200000
p1.description = "Complete branding for the company with logo, brochures, website & hosting"

p2 = Project.new
p2.id = 2 
p2.name = "Branding for graficon"
p2.client_id = c2.id
p2.start_date = "2017-09-25"
p2.end_date = "2017-10-10"
p2.budget = 100000
p2.description = "Complete branding for the company with logo, brochures, website & hosting"

puts "*" * 30
puts "Listing Clients"
puts "*" * 30
puts c1.details
puts c2.details

puts "*" * 30
puts "Listing Projects"
puts "*" * 30
puts p1.details
puts p2.details

