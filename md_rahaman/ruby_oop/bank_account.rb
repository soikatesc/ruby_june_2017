class BankAccount
	attr_reader :account_number, :checking, :saving

	@@bank_accounts = 0

	def initialize
		@account_number = create_account
		@checking = 0
		@saving = 0
		@@bank_accounts += 1
		interest_rate = 0.01
	end

	def deposit(account, amount)
		if account.downcase == "checking"
			@checking += amount
		else
			@saving += amount
		end
	end

	def withdraw(account, amount)
		if account.downcase == "checking"
			if @checking - amount < 0
				puts "Insufficient Funds, you have #{@checking} in this account"
			else
				@checking -= amount
			end
		else
			if @saving - amount < 0
				puts "Insufficient Funds, you have #{@saving} in this account"
			else
				@saving -= amount
			end

		end
	end
		
	def total
		puts "Checking Balance: #{@checking}\nSaving Balance: #{@saving}\nTotal Balance #{@checking+@saving}"
	end

	def account_information
		puts "Account Number: #{@account_number}"
	end

	private
		def create_account
			Array.new(10).map { rand(1..9)}. join
		end
end

account1 = BankAccount.new
account1.account_information
account1.deposit("checking", 100)
account1.withdraw("checking", 10)
account1.total

