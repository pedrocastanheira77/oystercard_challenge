class Oystercard

  INITIAL_BALANCE = 0

  attr_reader :balance

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
  end

end
