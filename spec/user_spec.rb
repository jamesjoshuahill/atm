require 'user'

describe User do

  let(:user) { User.new('Frank', 'Bloggs', '1234') }

  it 'has a first name' do
    expect(user.first_name).to eq 'Frank'
  end

  it 'has a last name' do
    expect(user.last_name).to eq 'Bloggs'
  end

  it 'has a full name' do
    expect(user.name).to eq 'Frank Bloggs'
  end

  it 'can verify a pin' do
    expect(user.verify_pin?('1234')).to be_true
  end

  it 'cannot verify a pin' do
    expect(user.verify_pin?('')).to be_false
  end

end
