class Oystercard

  INITIAL_BALANCE = 0
  MAXIMUM_VALUE = 90

  attr_reader :balance

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
  end

  def top_up(amount)
    error_message = "Maximum value £ #{MAXIMUM_VALUE} exceeded"
    raise error_message if (@balance + amount) > MAXIMUM_VALUE
    @balance += amount
  end
end
