require 'bank'

describe Bank do

  it "verifies a user" do
    user = double User
    account = double :account
    user.should_receive(:verify_pin?).with '1234'

    bank = Bank.new({ 'Frank' => { user: user,
                                   account: account } })
    bank.account_from('Frank', '1234')
  end

  it "returns a user's account" do
    user = double User, verify_pin?: true
    account = double :account

    bank = Bank.new({ 'Frank' => { user: user,
                                   account: account } })
    expect(bank.account_from('Frank', '1234')).to eq account
  end

end
