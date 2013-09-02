require_relative 'user'

class Bank
  def initialize(accounts)
    @accounts = accounts
  end

  def account_from(name, pin)
    @accounts[name][:user].verify_pin?(pin)
  end
end