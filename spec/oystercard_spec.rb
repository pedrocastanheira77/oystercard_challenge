require 'oystercard'

describe Oystercard do

  it {is_expected.to respond_to(:top_up).with(1).argument}

  it 'creates a freshly initialized card with balance 0' do
    expect(subject.balance).to eq(0)
  end

  it 'creates top up' do
    card = Oystercard.new
    value_topup = 5
    expect(card.top_up(value_topup)).to eq(card.balance)
  end

  it 'set maximum amount in oystercard' do
    value_topup = 91
    error_message = "Maximum value £ #{Oystercard::MAXIMUM_VALUE} exceeded"
    expect { subject.top_up(value_topup) }.to raise_error(error_message)
  end

end
