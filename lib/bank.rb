require_relative 'user'

class Bank
  def open_account(user)
    @user = user
  end

  def accounts
    [@user]
  end
end