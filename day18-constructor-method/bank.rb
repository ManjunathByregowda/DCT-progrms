class Bank
	attr_accessor :account_number, :name, :balance
	@@count = 0
	@@account_holder = []

	def initialize(details)
		@account_number= details[:account_number]
		@name= details[:name] 
		@balance=details[:balance]
		@@count += 1 
		@@account_holder.push(self)
	end
	def transaction(amount,code) #instance method
		case code
		when 0
			puts "withdraw INR #{amount}"
			(@balance - amount) < 0 ? "#{puts 'insufficent funds'}" : @balance = @balance - amount
		when 1
			puts "depositing INR #{amount}"
			@balance = @balance + amount
		else
			return " invalid input" #puts
		end
	end

	def details # instance method
		"#{account_number} - #{name} - #{balance}"
	end
	def self.count
		@@count
	end
	def self.all
		@@account_holder
	end
end

b1 = Bank.new({
	account_number: "0434101017205",
	name: "Manju",
	balance: 1000
	})
b2 = Bank.new({
	account_number: "0434101014406",
	name: "ByreGowda",
	balance: 10000
	})
puts b1.details
b1.transaction(500,1)
puts b1.details
b1.transaction(2000,0)
puts b1.details
b1.transaction(800,0)
puts b1.details
b1.transaction(2300,1)
puts b1.details
b1.transaction(500,3)
puts b1.details
puts Bank.count
Bank.all.each do |account_holder|
	puts "#{account_holder.account_number} - #{account_holder.name} - #{account_holder.balance}"
end