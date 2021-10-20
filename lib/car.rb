class Car
  attr_reader :make, :monthly_payment, :loan_length, :color
  def initialize(make, monthly_payment, loan_length)
    @make = make
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = color

  end

  def make
    car_make = @make.split
    car_make[0]
  end

  def model
    car_model = @make.split
    car_model[1]
  end

  def total_cost
    @loan_length * @monthly_payment
  end

  def paint!(paint)
    @color = paint
  end
end
