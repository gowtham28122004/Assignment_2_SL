class BankAccount
  def initialize
    @balance = 0
  end

  def add_balance(amount)
    if amount > 0
      @balance += amount
      puts "Deposited #{amount}. New balance: #{@balance}"
    else
      puts "Deposit amount must be positive!"
    end
  end

  def withdraw(amount)
    if amount > 0 && amount <= @balance
      @balance -= amount
      puts "Withdrew #{amount}. New balance: #{@balance}"
    elsif amount > @balance
      puts "Insufficient balance!"
    else
      puts "Withdrawal amount must be positive!"
    end
  end

  def check_balance
    puts "Current balance: #{@balance}"
  end
end
