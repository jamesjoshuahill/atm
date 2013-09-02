require 'bank'

describe Bank do
  it 'can open an account' do
    bank = Bank.new
    user = User.new('Joe', 'Bloggs', '1234')
    bank.open_account(user)

    expect(bank.accounts).to include user
  end
end