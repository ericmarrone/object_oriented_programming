class BankAccount
  def initialize
    @balance = 0
    @interest_rate = 0.05
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= (1+ @interest_rate)
  end

end


bank_account1 = BankAccount.new

puts bank_account1.inspect
bank_account1.deposit(10)
puts bank_account1.inspect
bank_account1.withdraw(5)
puts bank_account1.inspect

bank_account1.gain_interest
puts bank_account1.inspect
