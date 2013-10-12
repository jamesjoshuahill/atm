require_relative 'user'

class Bank

  def initialize(accounts)
    @accounts = accounts
  end

  def account_from(name, pin)
    user_info = @accounts[name]
    return user_info[:account] if user_info[:user].verify_pin?(pin)
  end

end
