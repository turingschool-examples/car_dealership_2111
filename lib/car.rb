class Car
  attr_reader :monthly_payment, :loan_length, :color
  def initialize(make, monthly_payment, loan_length)
    @make = make
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make
    @make.split[0]
  end

  def model
    @make.split[1]
  end

  def total_cost
    @loan_length * @monthly_payment
  end

  def paint!(color)
    @color = color
  end
end
