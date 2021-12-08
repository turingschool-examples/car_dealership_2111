class Car
  attr_reader :make, :model, :monthly_payment
  def initialize(car, monthly_payment, loan_length)
    @car = car
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    @car.split.first
  end

  def model
    @car.split.last
  end

  def loan_length
    @loan_length
  end

  def total_cost
    @loan_length * @monthly_payment
  end

end
