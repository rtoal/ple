# A demonstration of what not to do. All methods are public.
class Account
  def initialize; @balance = 0; end
  def deposit(amount); @balance += amount; self.log(amount); end
  def log(amount); puts "added: #{amount}, balance: #@balance"; end
end

a = Account.new
a.deposit(100)     # This is fine, we want to make deposits.
a.log(-999)        # Noooo! Shouldn't log from outside the class!

# An attempt to fix the account. But it still can be subverted.
class Account
  def initialize; @balance = 0; end
  def deposit(amount); @balance += amount; self.log(amount); end
protected
  def log(amount); puts "added: #{amount}, balance: #@balance"; end
end

a = Account.new
a.deposit(100)
a.log(-999) rescue puts "Whew: Can't call protected method"

# But protected does not help you from subclasses
class BadAccount < Account
  def mess_up_log(otherAccount); otherAccount.log(-999); end
end

BadAccount.new.mess_up_log(a)   # Oh no!

# Making the log method private prevents the previous attack
class Account
  def initialize; @balance = 0; end
  def deposit(amount); @balance += amount; log(amount); end
private
  def log(amount); puts "added: #{amount}, balance: #@balance"; end
end

a = Account.new
a.deposit(100)
a.log(-999) rescue puts "Whew: Can't call private method"
BadAccount.new.mess_up_log(a) rescue puts 'SAFE!!'

# We're not really safe. Direct send ignores access control.
a.send(:log, -999)
