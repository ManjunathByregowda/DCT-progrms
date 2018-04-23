class Client
	attr_accessor :name, :company, :mobile, :email
	@@count =0
	@@client = []

	def initialize(details)
		@name= details[:name]
		@company=details[:company]
		@mobile=details[:mobile]
		@email=details[:email]
		@@count += 1
		@@client.push(self)
	end
	def details
		"#{name} - #{company} - #{mobile} - #{email}"
	end
	def self.count
		@@count
	end
	def self.all
		@@client
	end
end

c1 = Client.new({
	name:"Manju",
	company: "syook",
	mobile: "8496918848",
	email: "manjunathabmn792@gmail.com"
	})
puts c1.details

c2 = Client.new({
	name: "rakesh",
	company: "qubik"
	})
puts c2.details

c3 = Client.new({person:10000})
puts c3.details
puts Client.count
Client.all.each do |client|
	puts "#{client.name} - #{client.company} - #{client.mobile} - #{client.email}"
end
