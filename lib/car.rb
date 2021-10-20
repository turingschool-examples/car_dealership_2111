class Car
  attr_accessor :car, :monthly_payment, :loan_length
  attr_accessor :color
  def initialize(car, monthly_payment, loan_length)
    @car = car.split(" ")
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = color
  end
  def make
    @car[0]
  end
  def model
    @car[1]
  end
  def total_cost
    @loan_length * @monthly_payment
  end
  def paint!(hue)
    @color = hue
  end
end
