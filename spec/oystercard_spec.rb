require 'oystercard'

describe Oystercard do

  it {is_expected.to respond_to(:top_up).with(1).argument}

  it 'creates a freshly initialized card with balance 0' do
    card = Oystercard.new
    expect(card.balance).to eq(0)
  end

  it 'tests topup' do
    card = Oystercard.new
    value_topup = 5
    expect(card.top_up(value_topup)).to eq(card.balance)
  end

end
