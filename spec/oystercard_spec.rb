require 'oystercard'

describe Oystercard do

  #it {is_expected.to respond_to(:balance)}

  it 'creates a freshly initialized card with balance 0' do
    oyster = Oystercard.new
    expect(oyster.balance).to eq(0)
  end

end
